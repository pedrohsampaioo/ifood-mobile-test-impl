import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../shared/theme/app_theme.dart';
import '../../../../shared/utils/handle_keyboard.dart';
import '../application/get_user_by_username/get_user_by_username_state_notifier.dart';
import '../components/listing_of_posts_component.dart';
import '../providers/providers.dart';
import '../widgets/search_text_field_widget.dart';

class HomePage extends HookWidget {
  void _searchTextFieldOnChanged({
    required TextEditingController controller,
    required String input,
    required GetUserByUsernameStateNotifier getUserByUsernameStateNotifier,
  }) {
    getUserByUsernameStateNotifier.emitLoadInProgress();
    Timer(const Duration(seconds: 2), () {
      if (input == controller.text) getUserByUsernameStateNotifier.fetch(input);
    });
  }

  @override
  Widget build(BuildContext context) {
    final getUserByUsernameStateNotifier = useProvider(
      getUserByUsernameStateNotifierProvider.notifier,
    );
    final getPostsByIdStateNotifier = useProvider(
      getPostsByIdStateNotifierProvider.notifier,
    );
    final searchController = useTextEditingController();
    return GestureDetector(
      onTap: () => HandleKeyboard.hide(context),
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SearchTextFieldWidget(
                  controller: searchController,
                  onChanged: (value) => _searchTextFieldOnChanged(
                    controller: searchController,
                    input: value,
                    getUserByUsernameStateNotifier:
                        getUserByUsernameStateNotifier,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              ListingOfPostsComponent(
                tryAgain: () =>
                    getUserByUsernameStateNotifier.fetch(searchController.text),
                getUserByUsernameStateNotifierProvider:
                    getUserByUsernameStateNotifierProvider,
                getPostsByIdStateNotifierProvider:
                    getPostsByIdStateNotifierProvider,
                getPostsByIdStateNotifier: getPostsByIdStateNotifier,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
