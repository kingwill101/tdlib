import 'package:tdlib/td_api.dart' as td;
import 'package:tdlib/td_client.dart';

Future<void> main() async {
  final client = Client.create();

  client.updates.listen((event) {
    print(event.toJson());
  });

  await client.initialize();

  final result = client.execute<td.Ok>(
    td.SetLogVerbosityLevel(newVerbosityLevel: 0),
  );
  print(result.toJson());
}
