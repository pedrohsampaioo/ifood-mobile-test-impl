import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app_widget.dart';

void main() async {
  await DotEnv.load(fileName: 'lib/.env');
  runApp(ProviderScope(child: AppWidget()));
}
