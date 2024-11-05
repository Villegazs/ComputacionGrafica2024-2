Shader "Manana/Gaussian Blur"
{
    Properties{
        _MainTex("Main Texture", 2D) = "white" {} //Texturas se usan "llaves" {}
        _PixelOffset("Pixel Offset", float) = 1
    
    }
    
    Subshader{
        Tags{
            "RenderPipeline"="UniversalPipeline"
            "RenderType"="Opaque"
            "Queue"="Transparent"
        }
        
        ZWrite Off //Profundidad
        //Blend One One //Alpha blending
        
        Pass{
            Name "Gaussian3X3"
            
            HLSLPROGRAM

            
            #pragma vertex Vertex //Vertex Shader
            #pragma fragment Fragment //Fragment Shader

            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            
            //Interpoladores
            struct Input{ //Guarda la posicion cruda
                float4 positionOS : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct Varyings
            {
                float4 positionHCS : SV_POSITION;
                float2 uv : TEXCOORD0;
            };

            //DirectX
            /*Texture2D _MainTex;
            samplerState sampler_MainTex*/
            sampler2D _MainTex;
            float4 _MainTex_TexelSize; // Tamaño Texturas x = 1/width y = 1/height z = width w = height
            
            float _PixelOffset;

            StructuredBuffer<float> kernel; //Array
            int _KernelSize;

            float4 ApplyKernel3x3(sampler2D tex, float2 uv, float pixelOffset, float2 texelSize, float kernel[9])
            {


                float4 result = 0;

                [unroll(9)]
                for(int y =-1; y <2; ++y)
                {
                    for(int x = -1; x < 2; ++x)
                    {
                        float2 offset = float2(x,y) * texelSize * pixelOffset; //Desfase
                        result += tex2D(tex, uv + offset) * kernel[(x + 1) + (y + 1) * 3];
                    }

                }

                return result;
                
            }

            Varyings Vertex(Input IN) //Creando estructura de interpolacion
            {
                Varyings OUT;
                OUT.positionHCS = TransformObjectToHClip(IN.positionOS);
                OUT.uv = IN.uv;
                return OUT;
            }

            float4 Fragment(Varyings IN ): SV_Target{ //Realiza interpolacion (Rasterizacion)
                float gaussianKernel[9] =
                {
                    0.0625,   0.125,    0.0625,
                    0.125,    0.25,    0.125,
                    0.0625,   0.125,    0.0625
                };

                const float sharpenKernel[9] =
                {
                    0,   1,    0,
                    1,   -4,    1,
                    0,   1,    0
                };

                const float sobelKernelX[9] =
                {
                    -1,  0, 1,
                    -2,  0, 2,
                    -1,  0, 1
                };

                const float sobelKernelY[9] =
                {
                    1,  2, 1,
                    0,  0, 0,
                    -1,  -2, -1
                };

                float sobelX = ApplyKernel3x3(_MainTex, IN.uv, _PixelOffset, _MainTex_TexelSize, sobelKernelX);
                float sobelY = ApplyKernel3x3(_MainTex, IN.uv, _PixelOffset, _MainTex_TexelSize, sobelKernelY);

                float sobel = sqrt(sobelX * sobelX + sobelY * sobelY);
                float4 tex = tex2D(_MainTex, IN.uv);

                return lerp(tex, 0, saturate(pow(sobel, 2) * 50)); //sobel
                
                // Sharpen Kernel return tex2D( _MainTex, IN.uv) + ApplyKernel3x3(_MainTex, IN.uv, _PixelOffset, _MainTex_TexelSize, sharpenKernel);
            }
            
            ENDHLSL
        }
    }
}