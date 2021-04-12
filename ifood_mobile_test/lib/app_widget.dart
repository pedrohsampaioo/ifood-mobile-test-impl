import 'package:flutter/material.dart';

import 'features/posts/presentation/pages/home_page.dart';
import 'shared/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.config,
      home: HomePage(),
    );
  }
}
