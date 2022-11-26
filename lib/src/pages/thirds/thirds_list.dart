import 'package:flutter/material.dart';
import 'package:residential_set/src/global/variables.dart';
import 'package:residential_set/src/pages/thirds/thirds_data.dart';
import 'package:residential_set/src/widgets/main_list_title.dart';

class ThirdList extends StatefulWidget {
  const ThirdList({Key? key}) : super(key: key);

  @override
  State<ThirdList> createState() => _ThirdListState();
}

class _ThirdListState extends State<ThirdList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text(
          'ACOMPAÑANTES',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'NunitoSans',
              color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(children: [
          const MainListTitle('Acompañantes'),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              itemCount: thirdData.length,
              itemBuilder: (context, index) {
                var initData = thirdData[index];

                return Column(
                  children: [
                    const SizedBox(
                      height: 7.0,
                    ),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      child: ListTile(
                        leading: Stack(
                          children: [
                            Image.asset(
                              '${initData['image']}',
                              height: 40.0,
                              width: 40.0,
                            ),
                            Positioned(
                              left: 28.0,
                              top: 28.0,
                              child: Container(
                                padding: const EdgeInsets.all(3.0),
                                width: 12.0,
                                height: 12.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.greenAccent,
                                ),
                              ),
                            )
                          ],
                        ),
                        title: Column(
                          children: [
                            const SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(initData['name'].toString(),
                                  style: fontNormal),
                            ),
                            const SizedBox(
                              height: 5.0,
                            )
                          ],
                        ),
                        subtitle: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '${initData['type']} ${initData['identification']}',
                                style: fontSmallGrey,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Teléfono ${initData['phone']}',
                                style: fontSmallGrey,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Fecha de nacimiento ${initData['date_nac']}',
                                style: fontSmallGrey,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7.0,
                    ),
                  ],
                );
              },
            ),
          )
        ]),
      )),
    );
  }
}
