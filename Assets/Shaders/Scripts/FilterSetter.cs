using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FilterSetter : MonoBehaviour
{

    public enum FilterType
    {
        Gaussian, 
        Sobel,
        Laplacian
    }

    public enum FilterSize
    {
        F3x3 = 1,
        F5x5 = 2,
        F7x7 = 3
    }

    [SerializeField] private Material material;
    [SerializeField] private FilterType filterType;
    [SerializeField] private FilterSize filterSize;

    ComputeBuffer filterBuffer;

    private float[] GenerateKernel()
    {
        float[][] kernels3x3 =
        {
            new float[]
            {
                0.0625f,   0.125f,    0.0625f,
                0.125f,    0.25f,    0.125f,
                0.0625f,   0.125f,    0.0625f
            }
        };

        return kernels3x3[(int) filterType];
    }

    private void UpdateFilter()
    {
        if (material == null) return;
        material.SetInt("_KernelSize", (int) filterSize);
        //material.SetInt("_MainTex", (int)filterSize);

        if (filterBuffer != null)
        {
            //filterBuffer.
        }
        filterBuffer = new ComputeBuffer((int) filterSize * 2 +1, sizeof(float));
        filterBuffer.SetData(GenerateKernel());
        material.SetBuffer("_Kernel", filterBuffer);
    }

    private void OnValidate()
    {
        
    }

    private void Awake()
    {
        
    }
}
