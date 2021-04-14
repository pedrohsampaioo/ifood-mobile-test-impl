import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

import '../../domain/services/google_language_service.dart';
import '../../domain/services/twitter_service.dart';
import '../../domain/usecases/analyse_post_by_text.dart';
import '../../domain/usecases/get_posts_by_id.dart';
import '../../domain/usecases/get_user_by_usename.dart';
import '../../infraestructure/http_config/http_google_language_decorator.dart';
import '../../infraestructure/http_config/http_twitter_authenticator_decorator.dart';
import '../../infraestructure/services/google_language_service_impl.dart';
import '../../infraestructure/services/twitter_service_impl.dart';
import '../application/analyse_posts/analyse_posts_state_notifier.dart';
import '../application/get_posts_by_id/get_posts_by_id_state_notifier.dart';
import '../application/get_user_by_username/get_user_by_username_state_notifier.dart';

part 'http_providers.dart';
part 'service_providers.dart';
part 'state_notifiers.dart';
part 'usecases.dart';
