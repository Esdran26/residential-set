import 'package:flutter/material.dart';
import 'package:residential_set/src/global/variables.dart';

// ignore: must_be_immutable
class FieldData extends StatelessWidget {
  String? textGrey = '';
  String? dataText = '';
  FieldData({Key? key, required this.textGrey, required this.dataText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int limitLength = 20;
    String truncate = '';
    bool isTruncate = false;

    if (dataText.toString().length > limitLength) {
      for (int i = 0; i < limitLength; i++) {
        truncate += dataText![i];
      }
      truncate = '$truncate...';
      isTruncate = true;
    } else {
      truncate = dataText!;
      isTruncate = false;
    }

    return Row(
      children: [
        SizedBox(
          width: 95.0,
          child: Text(
            textGrey.toString(),
            style: fontSmallGrey,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.40,
          margin: const EdgeInsets.only(left: 20.0),
          child: isTruncate
              ? GestureDetector(
                  onTap: () async {
                    return showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text(
                                    'Cerrar',
                                    style: TextStyle(color: Colors.redAccent),
                                  )),
                            ],
                            content: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                dataText!,
                                style: fontSmallSub,
                              ),
                            ),
                          );
                        });
                  },
                  child: Text(
                    truncate.toString(),
                    style: fontSmall,
                  ),
                )
              : Text(
                  truncate.toString(),
                  style: fontSmall,
                ),
        )
      ],
    );
  }
}
