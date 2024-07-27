import 'package:args/command_runner.dart';
import 'package:tools/command/create_file.dart';

Future<void> main(List<String> arguments) async {
  try {
    final runner =
        CommandRunner('tools', 'Command-line tools for Flutter projects ')
          ..addCommand(CreateFileCommand());

    await runner.run(arguments);
  } on UsageException catch (e) {
    print(e);
  }
}
