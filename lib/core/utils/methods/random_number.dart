import 'dart:math';

String generarNumeroAleatorio() {
  final random = Random(DateTime.now().millisecondsSinceEpoch);
  final numero = (random.nextInt(90000000) + 10000000).toString();
  return '$numero-L';
}
