import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

import 'app_widget.dart';

void main() async {
  await DotEnv.load(fileName: 'lib/.env');
  runApp(AppWidget());
}
