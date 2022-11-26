import 'package:flutter/material.dart';
import 'package:residential_set/src/global/variables.dart';
import 'package:residential_set/src/pages/join/join_data.dart';
import 'package:residential_set/src/widgets/field_data.dart';
import 'package:residential_set/src/widgets/main_list_title.dart';

class JoinList extends StatefulWidget {
  const JoinList({Key? key}) : super(key: key);

  @override
  State<JoinList> createState() => _JoinListState();
}

class _JoinListState extends State<JoinList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text(
          'Ingreso',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'NunitoSans',
              color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(children: [
          const MainListTitle('Registro de Ingresos'),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              itemCount: joinData.length,
              itemBuilder: (context, index) {
                var initData = joinData[index];

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
                                'Torre ${initData['tower']}, Apt ${initData['apt']}',
                                style: fontSmallGrey,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Fecha ${initData['date_join']}',
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
                                      title: const Text('Detalle de Ingreso'),
                                      content: SingleChildScrollView(
                                          child: Column(
                                        children: [
                                          FieldData(
                                              textGrey: 'Identificación',
                                              dataText:
                                                  '${initData['type']} ${initData['identification']}'),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          FieldData(
                                              textGrey: 'Nombre',
                                              dataText:
                                                  '${initData['name']}'),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          FieldData(
                                              textGrey: 'Teléfono',
                                              dataText:
                                                  '${initData['phone']}'),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          FieldData(
                                              textGrey: 'Dirección',
                                              dataText:
                                                  '${initData['phone']}'),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          FieldData(
                                              textGrey: 'Correo',
                                              dataText:
                                                  '${initData['email']}'),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          FieldData(
                                              textGrey: 'Fecha Ingreso',
                                              dataText:
                                                  '${initData['date_join']}'),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          FieldData(
                                              textGrey: 'Autorizó',
                                              dataText:
                                                  '${initData['user_auth']}'),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          FieldData(
                                              textGrey: 'Observación',
                                              dataText:
                                                  '${initData['observation']}'),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                        ],
                                      )),
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
                              child: const Text('Detalles',
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
