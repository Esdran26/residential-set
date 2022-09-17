import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Custom Imports
import 'package:residential_set/src/global/variables.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static bool isValidEmailNumber = false;
  static bool isValidPasswordNumber = false;
  String emailLogin = '';
  String passwordLogin = '';
  String allContent = '';
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text(
          'Bienvenido',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'NunitoSans',
              color: Colors.white),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/wave.png'), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                Image.asset(
                  'images/tu_conjunto.png',
                  width: 100.0,
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Correo electrónico',
                    style: fontNormal,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'ejemplo@correo.com',
                      prefixIcon: Icon(
                        CupertinoIcons.person_2_fill,
                        color: primaryColor,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                  onChanged: (value) {
                    // ignore: unnecessary_string_escapes
                    if (!value.contains(RegExp(
                        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$"))) {
                      setState(() {
                        isValidEmailNumber = false;
                      });
                    } else {
                      setState(() {
                        emailLogin = value;
                        isValidEmailNumber = true;
                      });
                    }
                  },
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Contraseña',
                    style: fontNormal,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  obscureText: isVisible == true ? false : true,
                  decoration: InputDecoration(
                      hintText: 'd3ltagamm',
                      prefixIcon: Icon(
                        CupertinoIcons.lock_fill,
                        color: primaryColor,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(isVisible == false
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                  onChanged: (value) {
                    if (value.length >= 4) {
                      setState(() {
                        isValidPasswordNumber = true;
                        passwordLogin = value;
                      });
                    } else {
                      setState(() {
                        isValidPasswordNumber = false;
                      });
                    }
                  },
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200.0, 50.0),
                      backgroundColor: isValidEmailNumber == true &&
                              isValidPasswordNumber == true
                          ? primaryColor
                          : CupertinoColors.systemGrey2,
                    ),
                    onPressed: () async {
                      // final prefs = await SharedPreferences.getInstance();

                      // allContent = '$emailLogin:$passwordLogin';
                      // String encoded =
                      //     base64Url.encode(utf8.encode(allContent));

                      // await prefs.setString('encoded', encoded);

                      // fetchLogin(context, encoded);
                    },
                    child: Text(
                      'Siguiente',
                      style: fontNormalButton,
                    )),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
