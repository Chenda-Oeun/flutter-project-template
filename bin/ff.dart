import 'package:args/command_runner.dart';
import 'package:tools/command/create_file.dart';
import 'package:tools/command/create_folder.dart';

Future<void> main(List<String> arguments) async {
  try {
    final runner =
        CommandRunner('ff', 'Command-line tools for Flutter projects ')
          // ..addCommand(CreateFileCommand())
          ..addCommand(CreateFolderCommand());

    await runner.run(arguments);
  } on UsageException catch (e) {
    print(e);
  }
}
