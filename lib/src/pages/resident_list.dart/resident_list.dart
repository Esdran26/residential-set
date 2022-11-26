import 'package:flutter/material.dart';
import 'package:residential_set/src/global/variables.dart';
import 'package:residential_set/src/pages/resident_list.dart/resident_data.dart';
import 'package:residential_set/src/widgets/main_list_title.dart';

class ResidentList extends StatefulWidget {
  const ResidentList({Key? key}) : super(key: key);

  @override
  State<ResidentList> createState() => _ResidentListState();
}

class _ResidentListState extends State<ResidentList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text(
          'RESIDENTES',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'NunitoSans',
              color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(children: [
          const MainListTitle('Residentes'),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              itemCount: residentData.length,
              itemBuilder: (context, index) {
                var initData = residentData[index];

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
                            Image.asset('${initData['image']}',
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
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: primaryColor,
                                  padding: const EdgeInsets.all(9.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0))),
                              child: Column(
                                children: [
                                  Text('Torre ${initData['tower']}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'NunitoSans',
                                          fontSize: 12.0,
                                          color: Colors.white)),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text('Apt ${initData['apt']}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'NunitoSans',
                                          fontSize: 12.0,
                                          color: Colors.white)),
                                ],
                              ),
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
