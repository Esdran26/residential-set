import 'package:flutter/material.dart';
import 'package:residential_set/src/global/variables.dart';
import 'package:residential_set/src/pages/bitacora/bitacora_data.dart';
import 'package:residential_set/src/widgets/main_list_title.dart';

class BitacoraList extends StatefulWidget {
  const BitacoraList({Key? key}) : super(key: key);

  @override
  State<BitacoraList> createState() => _BitacoraListState();
}

class _BitacoraListState extends State<BitacoraList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text(
          'BITACORA',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'NunitoSans',
              color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(children: [
          const MainListTitle('Bitacora'),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              itemCount: bitacoraData.length,
              itemBuilder: (context, index) {
                var initData = bitacoraData[index];

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
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xffa29bfe),
                                  borderRadius: BorderRadius.circular(20.0)),
                              height: 40.0,
                              width: 40.0,
                              child: Icon(
                                Icons.schedule,
                                color: primaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            
                          ],
                        ),
                        title: Column(
                          children: [
                            const SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(initData['user'].toString(),
                                  style: fontNormal),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('${initData['ocurrency_date']} ${initData['ocurrency_time']}',
                                  style: fontSmallGrey),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                          ],
                        ),
                        subtitle: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Torre/Apt: ${initData['tower_apt']}',
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
                              onPressed: () async {
                                return showDialog<void>(
                                  context: context,
                                  barrierDismissible:
                                      false, // user must tap button!
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Observación'),
                                      content: SingleChildScrollView(
                                          child: Text(
                                              '${initData['observation']}')),
                                      actions: <Widget>[
                                        TextButton(
                                          child: const Text('Cerrar'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: primaryColor,
                                  padding: const EdgeInsets.all(9.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0))),
                              child: const Text('Observación',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'NunitoSans',
                                      fontSize: 12.0,
                                      color: Colors.white)),
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
