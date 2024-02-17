import 'package:backend/backend.dart';
import 'package:shelf/shelf_io.dart' as io;

void main(List<String> arguments) async {
  final handler = startServer();
  final server = await io.serve(handler, 'localhost', 4444);
  print('Server online: 0.0.0.0:${server.port}');
}
