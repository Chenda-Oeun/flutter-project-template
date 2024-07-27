import 'dart:io';

void testApp() {
  final envVarMap = Platform.environment;
  // envVarMap.entries.map((e) {
  //   print("---------\n\n ${e.key} : ${e.value}");
  // }).toList();
  print(Platform.numberOfProcessors);
}
