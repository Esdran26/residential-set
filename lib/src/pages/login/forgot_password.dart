import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:residential_set/src/global/variables.dart';
import 'package:residential_set/src/pages/login/login_page.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  static bool isValidEmailNumber = false;
  String emailLogin = '';
  String allContent = '';
  bool isVisible = false;

  @override
  void initState() {
    isValidEmailNumber = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text(
          'Recupera tu contraseña',
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
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(220.0, 50.0),
                      backgroundColor: isValidEmailNumber == true
                          ? primaryColor
                          : CupertinoColors.systemGrey2,
                    ),
                    onPressed: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                      // final prefs = await SharedPreferences.getInstance();

                      // allContent = '$emailLogin:$passwordLogin';
                      // String encoded =
                      //     base64Url.encode(utf8.encode(allContent));

                      // await prefs.setString('encoded', encoded);

                      // fetchLogin(context, encoded);
                    },
                    child: Text(
                      'Recuperar Contraseña',
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
