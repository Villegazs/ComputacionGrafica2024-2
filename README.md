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


### VFX3:
![Vídeo sin título ‐ Hecho con Clipchamp (6)](https://github.com/user-attachments/assets/321da79a-6f44-48a5-a8d6-09985a3d352d)


Para este efecto necesitamos crear como una rafaga de ondas, que se disipen al final. Para este efecto la mayor parte fue usando el particle system. Primero se empezo con modelo 3D sencillo de la forma de la onda


![Vídeo sin título ‐ Hecho con Clipchamp (5)](https://github.com/user-attachments/assets/81dee4be-5161-4f81-b67b-3feeb3cbb03b)

![image](https://github.com/user-attachments/assets/7bfc6b8c-c28e-4a18-bad3-f656c9240593)
![Screenshot 2024-09-21 231553](https://github.com/user-attachments/assets/cff0c68d-3c33-4763-a2d6-6a99ff2083ab)

Luego se cre un pequeño shader para el material de la onda.

![Screenshot 2024-09-21 231357](https://github.com/user-attachments/assets/d1eabd02-abc9-4f64-a51e-5fe0ccc1d2bd)

Posteriormente se creo el particle system, se cambio el mesh, se le asigno el material, se ajustaron valores de cambio de color y tamaño por medio de curvas.

Luego se hizo otro particle system para las particulas alargadas que salen en la direccion de la onda. Para esta tambien se uso un pequeño shader y una textura de particula. 

![Vídeo sin título ‐ Hecho con Clipchamp (7)](https://github.com/user-attachments/assets/cc3bcd16-1cc2-403b-8c2a-122d8ab074fe)


![Flare00](https://github.com/user-attachments/assets/5a1a6ea9-f5c2-41e0-a6e5-9691a9030f0f)
![image](https://github.com/user-attachments/assets/bdb5773b-83a2-4161-bb69-886a4dbe497a)


Finalmente se creo un efecto de rastro de luz, para esto se uso un particle system, se uso el billboard y se justo el tamaño inicial para que fueran mas alargadas y que pareciera que estaban sobre el suelo, posteriormente se generaban varias particulas una detras de otra para que generaran continuidad. Por ultimo se duplico ese particle system, las particulas se hicieron mas anchas y se les cambio el color a negro para dar profundidad. Cabe mencionar que usan el mismo material que las particulas anteriores.

![Vídeo sin título ‐ Hecho con Clipchamp (4)](https://github.com/user-attachments/assets/6eb38a4f-8270-4433-bebd-d250fda95789)



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

