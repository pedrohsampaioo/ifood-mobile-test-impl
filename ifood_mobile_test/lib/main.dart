import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import 'features/posts/infraestructure/http_config/http_google_language_decorator.dart';
import 'features/posts/infraestructure/http_config/http_twitter_authenticator_decorator.dart';
import 'features/posts/infraestructure/services/google_language_service_impl.dart';
import 'features/posts/infraestructure/services/twitter_service_impl.dart';

void main() async {
  await DotEnv.load(fileName: 'lib/.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ElevatedButton(
          onPressed: () async {
            final service = GoogleLanguageServiceImpl(
              HttpGoogleLanguageDecorator(
                http.Client(),
                env['GOOGLE_LANGUAGE_TOKEN'] ?? '',
              ),
            );
            final result = await service.analyzeText('sad');
            print(result);

            final serviceTwitter = TwitterServiceImpl(
              HttpTwitterAuthenticatorDecorator(
                http.Client(),
                env['TWITTER_BEARER_TOKEN'] ?? '',
              ),
            );
            final resultTwo = await serviceTwitter.getPostsById('55');
            print(resultTwo);
          },
          child: Text('request'),
        ),
      ),
    );
  }
}
