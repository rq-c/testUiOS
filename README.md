Patrón de diseño: MVVM
ViewController Ligero y enfocado en solo pintar datos
Legibilidad de código
Reducir aún más la complejidad del enlace UI



Ciclo de vida de un ViewController:
Basicamente tenemos 5 metodos que definen el ciclo de vida de un ViewController:

ViewDidLoad: Este metodo se ejecuta una vez que la vista carga en memoria y solo se llama un vez durante la vida de un viewcontroller,
Aquí se llaman metodos que solo se utilicen una vez.
ViewWillAppear: Se ejecuta cada vez que la vista aparecerá, es usable para actualizaciones de datos en la vista
ViewDidAppear: Se ejecuta una vez que la vista aparece
ViewWillDisappear: Se ejecuta una vez que la vista va a desaparecer, podriamos detener acciones realizadas al iniciar la vista
ViewDidDisappear: Se ejecuta una vez que la vista ha desaparecido, se puede utilizar para almacenar datos o guardar el estado de la vista



Ciclo de vida de una app:
LaunchTime:
Inicialmente se ejectuta un método al cual no tenemos acceso llamado main() que a su vez lanza UIApplicationMain(), el cual se encarga
de cargar los principales ficheros de interfaz grafica, que son LaunchScreen y
le sigue el Storyboard que hayas definido como Inicial o Main,
Despues se hace una primera inicializacion en el metodo de 
willFinishLaunchingWithOptions, una vez ejecutado este metodo se hace una restauracion de estados de UI, al final
Se ejectuta el metodo de didFinishLaunchingWithOptions que se encuentra en
nuestro Appdelegate donde se agrega las configuraciones que hacen falta en nuestra aplicacion

Running Time:
En esta fase nuestra app se encuentra activa por lo cual se ejecuta el metodo applicationDidBecomeActive y empieza el bucle de eventos "EventLoop" que es el manejador de todos los eventos que van a ocurrir en nuestra app, es decir pasamos a nuestro RootViewController.



didFinishLaunchingWithOptions and viewDidLoad
El fondo se pintará de color amarillo, ya que el método viewDidLoad de nuestro ViewController se llama después de que la vista del controlador se carga en la memoria.
Posterior a eso se ejecuta el método didFinishLaunchingWithOptions, que hace una restauración de los estados UI, cambiando colores, posición, etc.
