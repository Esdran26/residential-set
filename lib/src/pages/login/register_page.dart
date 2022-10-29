import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Custom Imports
import 'package:residential_set/src/global/variables.dart';
import 'package:residential_set/src/pages/home/list_main.dart';
import 'package:residential_set/src/pages/login/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  static bool isValidEmailNumber = false;
  static bool isValidPasswordNumber = false;
  static bool isValidUser = false;
  String emailLogin = '';
  String passwordLogin = '';
  String userLogin = '';
  String allContent = '';
  bool isVisible = false;

  @override
  void initState() {
    isValidEmailNumber = false;
    isValidPasswordNumber = false;
    isValidUser = false;
    super.initState();
  }

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
                    'Nombre de usuario',
                    style: fontNormal,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'hsdj_2020',
                      prefixIcon: Icon(
                        CupertinoIcons.person_fill,
                        color: primaryColor,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                  onChanged: (value) {
                    if (value.length >= 4) {
                      setState(() {
                        isValidUser = true;
                        userLogin = value;
                      });
                    } else {
                      setState(() {
                        isValidUser = false;
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
                    'Correo electrónico',
                    style: fontNormal,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
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
                GestureDetector(
                  child: Center(
                    child: Text(
                      'Ya tienes una cuenta? Inicia Sesión',
                      style: TextStyle(
                          color: primaryColor,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200.0, 50.0),
                      backgroundColor: isValidEmailNumber &&
                              isValidPasswordNumber &&
                              isValidUser
                          ? primaryColor
                          : CupertinoColors.systemGrey2,
                    ),
                    onPressed: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ListMain()));
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
