library hop_runner;

import 'package:hop/hop.dart';
import 'package:hop/hop_tasks.dart';

void main(List<String> args) {

  List pathList = [
    'lib/books_v1_api_browser.dart',
    'lib/books_v1_api_console.dart',
    'lib/books_v1_api_client.dart'
  ];

  addTask('docs', createDartDocTask(pathList, linkApi: true));

  addTask('analyze', createAnalyzerTask(pathList));

  runHop(args);
}
