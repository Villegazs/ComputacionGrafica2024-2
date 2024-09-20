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
