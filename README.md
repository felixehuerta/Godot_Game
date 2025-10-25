# Godot_Game
Juego en APP Godot para la clase de Simulación por Computadora, en dicha aplicación se deberá realizar el desarrollo de un entorno en el que el jugador podra caminar libremente, al igual que colocar y diseñar la imagen de un jugador sencilla para demostrar las habilidades de diseño, estructura de nodos y programación de script para la realización del movimiento correspondiente según las teclas que el jugador desee presionar.

ENTORNO
* Se debera colocar una textura al suelo y jugador para demostrar el correscto manejo de shaders y StandardMaterial3D.

ILUMINACIÓN
* Para la iluminación se tiene un DirectionalLight3D estatico para la luz del entorno, al igual que un Environment de cielo (SKY) para generar un cielo al mapa de juego.

CONTROLES DE MOVIMIENTO (WASD)
* Adelante: Pulsar la tecla W
* Izquierda: Pulsar la tecla A
* Atras: Pulsar la tecla S
* Derecha: Pulsar la tecla D

CONTROL DE CAMARA
* La camara se controla con el movimiento del mouse como en los juegios clasicos de 3° persona

PROBLEMAS Y RESOLUCIÓN
* El unico problema en la realización del proyecto fue en la configuración de la camara al momento de que el jugador la utilizara para visualizar el entorno, ya que se coloco la linea de acción de manera incorrecta, como se puede observar en la imagen, se confundio la declaración de la variable rotate.x con rotate_x. Lo que genero errores al correr la escena
<img width="380" height="79" alt="img" src="https://github.com/user-attachments/assets/71cf1ac8-4897-49a3-8a50-47aac4911947" />
