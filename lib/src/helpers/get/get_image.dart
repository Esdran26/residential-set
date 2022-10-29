
import 'package:flutter/material.dart';
import 'package:residential_set/src/global/variables.dart';

Widget getImage(dynamic jsonData,
    {String typeImage = '', String firstLetter = ''}) {
  Widget image = CircleAvatar(
    backgroundImage: NetworkImage(jsonData['image']),
    radius: 17.0,
  );

  if (jsonData['image'].toString().contains('PF') == true ||
      jsonData['image'].toString().contains('PA') == true ||
      jsonData['image'].toString().contains('.jpg') == true ||
      jsonData['image'].toString().contains('.png') == true) {
    if (typeImage != '' &&
        typeImage != 'Catalogo' &&
        typeImage != 'CompanyCuental') {
      image = CircleAvatar(
        backgroundImage: NetworkImage(jsonData['image']),
        radius: 40.0,
      );
    } else if (typeImage != '' && typeImage == 'Catalogo') {
      Image.network(
        jsonData['image'],
        width: 40.0,
        height: 40.0,
      );
    }
  } else {
    Widget icon = const Icon(
      Icons.account_circle,
      color: Colors.white,
      size: 35.0,
    );

    if (typeImage == 'Company') {
      icon = Icon(
        Icons.business,
        color: primaryColor,
        size: 70.0,
      );
    } else if (typeImage == 'ProfilePatient') {
      icon = Icon(
        Icons.person,
        color: primaryColor,
        size: 70.0,
      );
    } else if (typeImage == 'Card') {
      icon = Icon(
        Icons.account_circle,
        color: primaryColor,
        size: 40.0,
      );
    } else if (typeImage == 'Catalogo') {
      icon = Icon(
        Icons.sell,
        color: Colors.orange[100],
        size: 40.0,
      );
    } else if (typeImage == 'CatalogoDetails') {
      icon = Icon(
        Icons.sell,
        color: primaryColor,
        size: 70.0,
      );
    }
    else if (typeImage == 'ElectronicDetails') {
      icon = Icon(
        Icons.attach_email,
        color: primaryColor,
        size: 70.0,
      );
    }
     else if (typeImage == 'CompanyCuental') {
      icon = Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.indigoAccent),
        child: Center(
          child: Text(
            firstLetter,
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'NunitoSans',
                fontSize: 15.0,
                color: Colors.white),
          ),
        ),
      );
    }

    image = icon;
  }

  return image;
}
