import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'secondscreen.dart';
import 'InterfaceCamera.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ajustes",
      home: MyCustomNavigator(),
    );
  }
}

class MyCustomNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
                builder: (context) => Scaffold(
                      appBar: AppBar(
                        title: Text("Configuración"),
                        centerTitle: false,
                      ),
                      body: ListView(
                        children: <Widget>[
                          CardInterface1(),
                          espaciado1_main(),
                          CardInterface2(),
                          espaciado2_main(),
                          CardInterface3(),
                          espaciado3_main(),
                          CardInterface4(),
                        ],
                      ),
                    ));
          case '/camera':
            return MaterialPageRoute(
                builder: (context) => InterfaceCamera(cameras: cameras));
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
      },
    );
  }
}

class CardInterface1 extends StatelessWidget {
  const CardInterface1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: EdgeInsets.only(right: 12.0, left: 12.0),
      width: 30,
      child: Card(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset(
                "assets/icons/Siri.png",
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("Miguel Ángel"),
              subtitle: Text("Apple ID, iCloud+, compras y más"),
              trailing: Icon(Icons.navigate_next, size: 30),
            ),
            ListTile(
              leading: Icon(
                Icons.family_restroom,
                size: 30,
              ),
              title: Text("Familia"),
              trailing: Icon(Icons.navigate_next, size: 30),
            ),
            // IconButton(
            //   icon: Icon(Icons.abc),
            // )
          ],
        ),
      ),
    );
  }
}

class espaciado1_main extends StatelessWidget {
  const espaciado1_main({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: EdgeInsets.only(right: 12.0, left: 12.0),
      width: 30,
    );
  }
}

class CardInterface2 extends StatelessWidget {
  const CardInterface2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      padding: EdgeInsets.only(bottom: 2.0, right: 15.0, left: 12.0),
      width: 30,
      child: Card(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset(
                "assets/icons/Airplane Mode.png",
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("Modo vuelo"),
              trailing: Icon(Icons.navigate_next, size: 30),
            ),
            ListTile(
              leading: Image.asset(
                "assets/icons/Wi-Fi.png",
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("Wi-Fi"),
              trailing: Icon(Icons.navigate_next, size: 30),
            ),
            ListTile(
              leading: Image.asset(
                "assets/icons/Bluetooth.png",
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("Bluetooth"),
              trailing: Icon(Icons.navigate_next, size: 30),
            ),
            ListTile(
              leading: Image.asset(
                "assets/icons/Cellular.png",
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("Red celular"),
              trailing: Icon(Icons.navigate_next, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}

class espaciado2_main extends StatelessWidget {
  const espaciado2_main({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      padding: EdgeInsets.only(right: 12.0, left: 12.0),
      width: 30,
    );
  }
}

class CardInterface3 extends StatelessWidget {
  const CardInterface3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      padding: EdgeInsets.only(right: 12.0, left: 12.0),
      child: Card(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset(
                "assets/icons/Notifications.png",
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("Notificaciones"),
              trailing: Icon(Icons.navigate_next, size: 30),
            ),
            ListTile(
              leading: Image.asset(
                "assets/icons/Sound.png",
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("Sonidos y vibración"),
              trailing: Icon(Icons.navigate_next, size: 30),
            ),
            ListTile(
              leading: Image.asset(
                "assets/icons/Focus Mode.png",
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("Enfoque"),
              trailing: Icon(Icons.navigate_next, size: 30),
            ),
            ListTile(
              leading: Image.asset(
                "assets/icons/Screen Time.png",
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("Tiempo en pantalla"),
              trailing: Icon(Icons.navigate_next, size: 30),
            )
          ],
        ),
      ),
    );
  }
}

class espaciado3_main extends StatelessWidget {
  const espaciado3_main({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      padding: EdgeInsets.only(right: 12.0, left: 12.0),
      width: 30,
    );
  }
}

class CardInterface4 extends StatelessWidget {
  const CardInterface4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 520,
      padding: EdgeInsets.only(right: 12.0, left: 12.0),
      child: Card(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset(
                "assets/icons/General.png",
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("General"),
              trailing: Icon(Icons.navigate_next, size: 30),
            ),
            ListTile(
              leading: Image.asset(
                "assets/icons/Control Center.png",
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("Centro de control"),
              trailing: Icon(Icons.navigate_next, size: 30),
            ),
            ListTile(
              leading: Image.asset(
                "assets/icons/Screen and brigth.png",
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("Pantalla y brillo"),
              trailing: Icon(Icons.navigate_next, size: 30),
            ),
            ListTile(
              leading: Image.asset(
                "assets/icons/Init Screen.png",
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("Pantalla de inicio y biblioteca de apps"),
              trailing: Icon(Icons.navigate_next, size: 30),
            ),
            ListTile(
              leading: Icon(
                Icons.accessibility,
                size: 30,
              ),
              title: Text("Accesibilidad"),
              trailing: Icon(Icons.navigate_next, size: 30),
            ),
            ListTile(
              leading: Image.asset(
                "assets/icons/Wallpaper.png",
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("Fondo de pantalla"),
              trailing: Icon(Icons.navigate_next, size: 30),
            ),
            ListTile(
              leading: Image.asset(
                "assets/icons/Siri.png",
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("Siri y Buscar"),
              trailing: Icon(Icons.navigate_next, size: 30),
            ),
            ListTile(
              leading: Image.asset(
                "assets/icons/Face ID.png",
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("Face ID y código"),
              trailing: Icon(Icons.navigate_next, size: 30),
            ),
            ListTile(
              leading: Image.asset(
                "assets/icons/Ear ID.png",
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("Ear ID y código"),
              trailing: Icon(Icons.navigate_next, size: 30),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
