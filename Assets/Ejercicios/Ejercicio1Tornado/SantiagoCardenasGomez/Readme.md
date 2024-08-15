# Parcial 1

![Vídeo sin título ‐ Hecho con Clipchamp](https://github.com/user-attachments/assets/2b8f1920-e1c9-4710-b329-c85826f7b82b)
![image](https://github.com/user-attachments/assets/6c152173-797b-459b-9a8f-c372508ee032)


## blender

Primero se crearon los mesh de los tornados y del cono inferior.
![image](https://github.com/user-attachments/assets/634c3526-2dbb-43c3-b79c-3dc78d0e23ed)
    

## Shader

Luego se creo el shader que seria la textura del tornado.


### 1
Se crea una variable float dissolve y se conecta con un remap, para invetir la salida, (0 → 1) (1 → 0). Y eso conectarlo al alpha, entonces entre mas alto el valor de la variable dissolve mas se va a disolver el tornado.
![Screenshot 2024-08-13 235631](https://github.com/user-attachments/assets/038cd5e0-e94b-4ffa-89e2-da6072ca27ae)

### 2
Para la textura del tornado se crearan dos texturas diferentes, estas seran un Radial Shear y un Twirl, cada una de ellas cambiara con una variable float multiplicada por el tiempo. Finalmente estas dos texturas se multiplicaran.
![Screenshot 2024-08-14 000109](https://github.com/user-attachments/assets/b60aa477-40d5-49b0-8a14-8deda97503ba)

### 3
La textura resultante se enviara a un modulo Power que determinara que tan visible es la texura, luego el resultado se multiplicara por un color.
![Screenshot 2024-08-14 000428](https://github.com/user-attachments/assets/f633087a-711d-439e-948e-a30c626fb684)


### 4
El power debe ir conectado al alpha threshold y el resultado de la multiplicacion del color por la textura debe ir conectado al base color. 
![Screenshot 2024-08-14 000604](https://github.com/user-attachments/assets/c0d570ca-3836-4da0-a845-7ae6902cfdd7)


## Tornados
![image](https://github.com/user-attachments/assets/295b3610-9498-4d41-9d68-e2b42a5d7ff5)

Para los tornados se uso el mesh hecho previamente en blender y se empleo el material derivado del shader expuesto anteriormente. Ademas, se le agrego una propiedad de rotation over lifetime para que girara.


## Espiral
![Screenshot 2024-08-15 015936](https://github.com/user-attachments/assets/bda0f52d-15d4-4126-917f-686e52abe580)

Para el efecto en espiral se emplearon los trails y se cambio la escala de las particulas para que fueran alargadas y se uso la propiedad size over lifetime para que se fuera desvaneciendo con el tiempo.


## Particulas flotantes
![image](https://github.com/user-attachments/assets/fa7fb1a1-fe52-4ca4-b814-d852f171183b)

En este caso se duplico el sistema de particulas anterior, pero no se usaron los trails y se reseteo la escala de las particulas para que fueran esfericas.


## Ondas
![image](https://github.com/user-attachments/assets/3eaeacc2-4081-4bfd-bcab-87729ac69988)

Para este caso se uso una textura hecha en photoshop con forma circular, se uso el prefab de la particula estatica y se cambio el material por uno que usara la textura circular.


## Luz
![image](https://github.com/user-attachments/assets/944c5b1f-6601-4f98-b723-913a599eac70)

En este efecto tambien se partio del prefab de la particula estatica y se empleo un material que tuviera emission para dar el efecto de luz.

## Cono Chiquito
![image](https://github.com/user-attachments/assets/9ee87857-9af0-4005-9424-53672a27ace8)

Para este efecto primero se creo un mesh en blender con un cono, se importo a unity y en el sistema de particulas se empleo dicho mesh y se uso la propiedad size over lifetime, se separaron los ejes y en el eje Y se uso una curva lineal decreciente.
