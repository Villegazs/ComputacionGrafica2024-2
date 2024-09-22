# ComputacionGrafica2024-2
## Ejercicio 1, Tornado de partículas
### Jacobo Prada
![Ejercicio1Computacion-ezgif com-crop](https://github.com/user-attachments/assets/a5f8291a-c244-40b2-b5d8-a98472841acf)

  - Vista por partes:
    

https://github.com/user-attachments/assets/270db67d-1404-4c0d-b983-235a5ca127ec

### Alejandro Villegas Morales
#### Tornado en conjunto
![enter image description here](https://file.garden/ZllYcqgh4hF11eox/ComputacionGrafica/Tornado.gif)
#### Tornado por partes
![enter image description here](https://file.garden/ZllYcqgh4hF11eox/ComputacionGrafica/TornadoSeparado.gif)

## Ejercicio Grupal: Efectos de Párticulas



https://github.com/user-attachments/assets/14237866-7cc3-4139-8310-756b0326a88e

### VFX 1: Spawn

![ComputacionGrafica2024-2-Effect2TestEscene-WindowsMacLinux-Unity2022 3 41f1__DX11_2024-09-2015-44-16-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/30dfc80d-fbb6-4457-b6ba-8fa842c8f11d)

Para los rayos que caen en espiral se utilizó el siguiente shader:

![image](https://github.com/user-attachments/assets/671ed6ff-6fd9-4421-a6ce-e97d475d48b0)



### VFX 2:
Se busca generar un vórtice, el cual se implementó a traves de cuatro sistemas de párticulas en Shuriken.

![VFX2](https://github.com/user-attachments/assets/8772f9c6-ec65-4b3d-bc69-c4280b2287d7)

Las texturas utilizadas fueron las siguientes para conseguir esos efectos:

#### Textura para vortice nuboso
![Efectos tornado](https://github.com/user-attachments/assets/066baa5f-ab51-4eb3-a391-dba8824d09b8)

- Se implementó de esta manera ya que los trails alargan la imagen y da ese efecto como de una nube y se dejan los espacios laterales sin ningún tipo de ilustración para que haya como cierta separación entre los trails.
- Añadiendo que en la generación de partículas se generarón un gradiente con dos colores análogos semejantes al cyan dirigidos al blanco.

### Textura para vortice de Rayos

![Textura Rayo](https://github.com/user-attachments/assets/253babd0-60b6-4b94-bbff-46ec8a7fea15)

### Nota: En todos los sistemas de partículas de este VFX se usó un shaderGraph que permitiera el uso de colores con HDR para representar esa iluminosidad

![Captura de pantalla 2024-09-16 175113](https://github.com/user-attachments/assets/33d82dc7-ceaa-4ac7-81b4-4e6eb964384a)




## Ejercicio 3 - Shaders

### Mascara Radial
Para este efecto se crearon dos versiones, con shaders diferentes, que ofrecen resultados ligeramente diferentes. Para la primera version se uso el fresnel effect y el smoothstep y para la segunda version la mascara se hizo por medio de coordenadas polares y un smoothstep. El remap lo usamos para invertir los valores de entrada, asi en la interfaz del material un MaskSmoothness de 0 dara como resultado un borde bien definido, y un MaskSmoothness de 1 dara como resultado un circulo bastante difuminado.

#### V1
![Vídeo sin título ‐ Hecho con Clipchamp (1)](https://github.com/user-attachments/assets/210d7883-9c98-481d-84c1-50c12a4104f2)

![image](https://github.com/user-attachments/assets/796858a3-bc8a-4340-9069-7a2ec1a0bdee)


#### V2
![Vídeo sin título ‐ Hecho con Clipchamp (2)](https://github.com/user-attachments/assets/65087ef0-262b-440c-be47-4bbecd8273aa)

![image](https://github.com/user-attachments/assets/62af97de-0e0d-41a4-b907-71bd10db5ce2)



### Disolver Textura Pre Creada
Este shader se  divide en dos partes, el cambio de color de la texutra y la disolucion de la textura, la parte del color es muy sencilla simplemente la textura se multiplica por un color, por el lado de la disolucion lo complicado fue lograr que se disolviera de afuera hacia adentro, para eso empleamos el one minus, que logra invertir los colores, y el smoothstep nos ayuda a disolver la textura, por ultimo el remap lo usamos para invertir los valores de entrada, asi en la interfaz del material una disolucion de 0 no afectara la texutura, y una de 1 disolvera la textura por completo.


![Vídeo sin título ‐ Hecho con Clipchamp (3)](https://github.com/user-attachments/assets/3710bb81-78f2-4101-8a93-a895a9369645)

![image](https://github.com/user-attachments/assets/f512b61b-4172-455a-bb55-da8c10f8903b)

