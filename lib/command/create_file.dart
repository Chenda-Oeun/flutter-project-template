import 'dart:io';

import 'package:args/command_runner.dart';

class CreateFileCommand extends Command {
  @override
  String get description => 'Create files in a folder.';

  @override
  String get name => 'create-file';

  CreateFileCommand();

  @override
  void run() async {
    print("object");

    ///Stream input
    ///
    ///
    ///
    stdout.write('Enter file name: ');
    final fileName = stdin.readLineSync();
    final file = File('$fileName.dart');
    file.create();

    print("created file to ${file.path}");
  }
}
