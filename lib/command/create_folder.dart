import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:chalk/chalk.dart';
import 'package:tools/helper/print_console.dart';

class CreateFolderCommand extends Command {
  @override
  String get description => 'Create folder in a folder.';

  @override
  String get name => 'create-folder';

  CreateFolderCommand();

  @override
  void run() async {
    String? folderName;
    String? directory;
    stdout.write('Enter directory : ');
    directory = stdin.readLineSync();
    try {
      int tried = 0;
      do {
        if (tried == 3) {
          printError("You have already tried $tried times, please try again!");
          break;
        }
        stdout.write('Enter folder name: ');
        folderName = stdin.readLineSync();
        if (directory?.isEmpty ?? false) {
          //  final currentDirectory = Platform.environment['PWD'];
          directory = './lib';
        } else if (directory?.endsWith("/") ?? false) {
          directory = directory?.substring(0, directory.length - 1) ?? "";
        }
        final folder = Directory("$directory/${folderName.toString()}");
        if (folderName?.isEmpty ?? false) {
          printError("You muster enter file name!");
        } else if (await folder.exists()) {
          printError("Folder name is exist, please try again!");
        } else {
          try {
            folder.create();
            printSuccess(
                "Folder ${chalk.underLine("#$folderName")} has been created at ${chalk.underLine("#${folder.absolute.path}")}");
          } catch (error) {
            printError(error);
          }
        }
        tried = tried + 1;
      } while (folderName?.isEmpty ?? false);
    } catch (error) {
      printError(error);
    }
  }
}
