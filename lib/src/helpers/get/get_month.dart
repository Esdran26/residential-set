String getMonth(String month) {
  String getMonth = '';

  switch (month) {
    case '01':
      getMonth = 'Enero';
      break;
    case '02':
      getMonth = 'Febrero';
      break;
    case '03':
      getMonth = 'Marzo';
      break;
    case '04':
      getMonth = 'Abril';
      break;
    case '05':
      getMonth = 'Mayo';
      break;
    case '06':
      getMonth = 'Junio';
      break;
    case '07':
      getMonth = 'Julio';
      break;
    case '08':
      getMonth = 'Agosto';
      break;
    case '09':
      getMonth = 'Septiembre';
      break;
    case '10':
      getMonth = 'Octubre';
      break;
    case '11':
      getMonth = 'Noviembre';
      break;
    case '12':
      getMonth = 'Diciembre';
      break;
    default:
      getMonth = 'Enero';
  }

  return getMonth;
}
