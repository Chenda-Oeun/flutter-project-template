import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:chalk/chalk.dart';
import 'package:tools/helper/print_console.dart';

class CreateFileCommand extends Command {
  @override
  String get description => 'Create files in a folder.';

  @override
  String get name => 'create-file';

  CreateFileCommand();

  @override
  void run() async {
    try {
      stdout.write('Enter file name: ');
      final fileName = stdin.readLineSync();
      final file = File('$fileName.dart');
      if (await file.exists()) {
        printError("File name is exist, please try again!");
      } else {
        file.create();
        printSuccess(
            "File ${chalk.underLine("#$fileName")} has been created at ${chalk.underLine("#${file.absolute.path}")}");
      }
    } catch (error) {
      printError(error);
    }
  }
}
