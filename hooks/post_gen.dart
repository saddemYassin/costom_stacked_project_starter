import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) async {
  final progress = context.logger.progress('Installing Packages');
  await Process.run('flutter', ['pub upgrade']);
  await Process.run('flutter', ['pub get']);
  progress.complete();
  bool hasTestFolder = context.vars['uses_test'] as bool;
  final testFolderProgress = context.logger.progress(hasTestFolder ? 'Creating Test folder' : 'Deleting Test folder');
  if(!hasTestFolder){
    await Directory('test').delete(recursive: true);
  }
  testFolderProgress.complete();
}
