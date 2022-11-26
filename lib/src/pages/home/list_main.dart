import 'package:flutter/material.dart';
import 'package:residential_set/src/global/variables.dart';
import 'package:residential_set/src/pages/bitacora/bitacora_list.dart';
import 'package:residential_set/src/pages/join/join_list.dart';
import 'package:residential_set/src/pages/login/login_page.dart';
import 'package:residential_set/src/pages/resident_list.dart/resident_list.dart';
import 'package:residential_set/src/pages/thirds/thirds_list.dart';
import 'package:residential_set/src/pages/users/user_list.dart';

class ListMain extends StatefulWidget {
  const ListMain({Key? key}) : super(key: key);

  @override
  State<ListMain> createState() => _ListMainState();
}

class _ListMainState extends State<ListMain> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          leading: const Icon(Icons.home_filled),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30.0,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Secciones',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontFamily: 'NunitoSans',
                      fontSize: 30.0,
                      color: Color.fromRGBO(45, 52, 54, 1.0)),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UserList()));
                    },
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: const Color(0xfff0efff),
                              borderRadius: BorderRadius.circular(20.0)),
                          height: 100.0,
                          width: 100.0,
                          child: Icon(
                            Icons.people_alt,
                            color: primaryColor,
                            size: 50.0,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Center(
                          child: Text(
                            'Usuarios',
                            style: fontNormalBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResidentList()));
                    },
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: const Color(0xfffef5e5),
                              borderRadius: BorderRadius.circular(20.0)),
                          height: 100.0,
                          width: 100.0,
                          child: const Icon(
                            Icons.apartment_rounded,
                            color: Color(0xffebb75c),
                            size: 50.0,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Center(
                          child: Text(
                            'Residentes',
                            style: fontNormalBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BitacoraList()));
                    },
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: const Color(0xfff3f8ed),
                              borderRadius: BorderRadius.circular(20.0)),
                          height: 100.0,
                          width: 100.0,
                          child: const Icon(
                            Icons.watch_later,
                            color: Color(0xff92b54b),
                            size: 50.0,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Center(
                          child: Text(
                            'Bitacora',
                            style: fontNormalBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const JoinList()));
                    },
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: const Color(0xffe4fafd),
                              borderRadius: BorderRadius.circular(20.0)),
                          height: 100.0,
                          width: 100.0,
                          child: const Icon(
                            Icons.fact_check_rounded,
                            color: Color(0xff25c0c7),
                            size: 50.0,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Center(
                          child: Column(
                            children: [
                              Text(
                                'Ingresos',
                                style: fontNormalBold,
                              ),
                              Text(
                                '',
                                style: fontNormalBold,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ThirdList()));
                    },
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: const Color(0xfffaf2ff),
                              borderRadius: BorderRadius.circular(20.0)),
                          height: 100.0,
                          width: 100.0,
                          child: const Icon(
                            Icons.badge_rounded,
                            color: Color(0xffb992da),
                            size: 50.0,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Center(
                          child: Column(
                            children: [
                              Text(
                                'Acompañantes',
                                style: fontNormalBold,
                              ),
                              Text(
                                '',
                                style: fontNormalBold,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: const Color(0xffffefed),
                              borderRadius: BorderRadius.circular(20.0)),
                          height: 100.0,
                          width: 100.0,
                          child: const Icon(
                            Icons.logout,
                            color: Color(0xffce7f7d),
                            size: 50.0,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Center(
                          child: Column(
                            children: [
                              Text(
                                'Cerrar',
                                style: fontNormalBold,
                              ),
                              Text(
                                'Sesión',
                                style: fontNormalBold,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
