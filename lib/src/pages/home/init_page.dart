import 'package:flutter/material.dart';
import 'package:residential_set/src/global/variables.dart';
import 'package:residential_set/src/pages/login/login_page.dart';

// Custom Imports

class InitPage extends StatelessWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: primaryColor,
          ),
          child: Container(
            padding: const EdgeInsets.only(left: 40.0, right: 40.0),
            margin: const EdgeInsets.only(top: 250.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage('images/wave.png'), fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.asset(
                //   'images/tu_conjunto.png',
                //   height: 150.0,
                // ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Tu Conjunto',
                    style: TextStyle(
                        fontSize: 35.0,
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NunitoSans'),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('¿Cómo te gustaría usar la aplicación?',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'NunitoSans',
                          fontSize: 17.0,
                          color: Color.fromRGBO(30, 39, 46, 1.0))),
                ),
                Material(
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Card(
                        elevation: 4.0,
                        child: ListTile(
                          title: Text('Como administrador', style: fontNormal),
                          leading: Icon(
                            Icons.admin_panel_settings,
                            color: primaryColor,
                          ),
                          trailing: const Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                        ),
                      ),
                      const Divider(),
                      Card(
                        elevation: 4.0,
                        child: ListTile(
                          title: Text('Como administrativo', style: fontNormal),
                          leading: Icon(
                            Icons.badge,
                            color: primaryColor,
                          ),
                          trailing: const Icon(Icons.keyboard_arrow_right),
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage())),
                        ),
                      ),
                      const Divider(),
                      Card(
                        elevation: 4.0,
                        child: ListTile(
                          title: Text('Como residente', style: fontNormal),
                          leading: Icon(
                            Icons.person,
                            color: primaryColor,
                          ),
                          trailing: const Icon(Icons.keyboard_arrow_right),
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage())),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
