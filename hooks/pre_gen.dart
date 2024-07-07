import 'dart:io';
import 'package:mason/mason.dart';
import 'package:yaml/yaml.dart';

void run(HookContext context) async {
  final directory = Directory.current.path;

  final pubSpecFile = File('$directory/pubspec.yaml');

  final content = await pubSpecFile.readAsString();

  final yamlMap = loadYaml(content);

  final packageName = yamlMap['name'];

  context.vars['projectName'] = packageName;
}

String camelToSentence(String text) {
  return text.replaceAllMapped(RegExp(r'^([a-z])|[A-Z]'),
      (Match m) => m[1] == null ? " ${m[0]}" : m[1]!.toUpperCase());
}
