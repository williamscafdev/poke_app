String updateFormattedDate(String text) {
  var textConvert = '';
  if (text.length == 2 || text.length == 5) {
    textConvert = '$text/';
  }
  return textConvert;
}
