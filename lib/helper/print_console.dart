import 'package:chalk/chalk.dart';

void printInfo(dynamic message) {
  print(chalk.blue(message.toString()));
}

void printSuccess(dynamic message) {
  print(chalk.green(message.toString()));
}

void printError(dynamic message) {
  print(chalk.red(message.toString()));
}

void printWarning(dynamic message) {
  print(chalk.yellow(message.toString()));
}
