# AMBIENTACIÓN PARA EL PROYECTO FRONT-END DEL CONJUNTO RESIDENCIAL

## Instalación del SDK Flutter
- [Windows](https://esflutter.dev/get-started/install/windows)
- [macOS](https://esflutter.dev/get-started/install/macos)
- [Linux](https://esflutter.dev/get-started/install/linux)

## Configurar un Editor
Puedes construir apps con Flutter utilizando cualquier editor de texto combinado con nuestras herramientas en línea de comando. De cualquier manera, recomendamos utilizar alguno de nuestros plugin para una mejor experiencia. Con nuestros plugins de edición, podrás auto completar código, sintaxis resaltada, asistencia al editar widgets, apoyo para ejecutar & depurar, y más.

## Instalar Android Studio

Android Studio ofrece una experiencia completa e integrada del IDE para Flutter.

[Android Studio](https://developer.android.com/studio/index.html), versión 3.0 o superior.

Otra opción puede ser utilizar IntelliJ:

[IntelliJ IDEA Community](https://www.jetbrains.com/idea/download/), versión 2017.1 o superior.
[IntelliJ IDEA Ultimate](https://www.jetbrains.com/idea/download/), versión 2017.1 o superior.

### Instalar los plugins de Flutter y Dart

Para instalar estos:

1. Inicie Android Studio.
2. Abra preferencias de complementos (**Preferences>Plugins** en macOS, **File>Settings>Plugins** en Windows & Linux).
3. Seleccione **Browse repositories…**, elige el complemento de Flutter y presione `install`.
4. Presione `Yes` cuando aparezca para instalar el complemento de Dart.
5. Presione `Restart` cuando aparezca.

## Instalar VS Code

VS Code es un editor ligero con Flutter, asistencia al ejecutar y depurar.

* [VS Code](https://code.visualstudio.com/), La versión estable más reciente.

### Instalar complemento de Flutter

1. Inicie VS Code
2. Llame **View>Command Palette…**
3. Teclee `install`, y seleccione la acción **‘Extensions: Install Extension’**
4. Introduzca `flutter` en el campo de búsqueda, seleccione **‘Flutter’** en la lista, y presione **Install**

### Valida tu configuración con Flutter Doctor

1. Llame a **View>Command Palette…**
2. Teclee `doctor`, y seleccione la acción **‘Flutter: Run Flutter Doctor’**
3. Revise la salida en el panel `OUTPUT` para cualquier inconveniente.

## Ejecutar app

1. Descargar el repositorio y abrirlo en VS Code
2. Localizar la barra de estado de VS Code(la barra azul en la parte de abajo de la ventana): ![status bar][]{:.mw-100}
3. Seleccionar el dispositivo de el área de Device Selector. Para detalles, vea [Cambio rápido entre dispositivos de Flutter](https://esflutter.dev/assets/tools/vs-code/device_status_bar-e3e86fb35b20e3c96f9f42243dddbd538bdfecb078a7136bdfad3b103a7912bc.png).
  * Si no se encuentra ningún dispositivo disponible y prefieres usar un simulador, clic **No Devices** y lance un simulador.
  * Para configurar un dispositivo real, siga las instrucciones para el dispositivo en específico para [instalar](https://esflutter.dev/docs/get-started/install) en el SO que utilice.
4. Llamar a **Debug > Start Debugging** o presionar `F5`
5. Espere que el app sea lanzada — el progreso se imprimirá en la vista de **Debug Console**

Después de que el compilado de la app se complete, verás la app inicial en tu dispositivo.

![starter-app-5e284e57b8dce587ea1dfdac7da616e6ec9dc263a409a9a8f99cf836340f47b8](https://user-images.githubusercontent.com/55358669/189492239-617d0b79-6d4c-49db-b3c4-d905fe9c55ca.png)
