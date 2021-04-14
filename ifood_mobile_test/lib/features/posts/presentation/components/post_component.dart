import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../application/analyse_posts/analyse_posts_state_notifier.dart';
import '../providers/providers.dart';
import '../widgets/post_widget.dart';

class PostComponent extends StatelessWidget {
  final String text;
  final String id;

  const PostComponent({
    Key? key,
    required this.text,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, _) {
        final analysePostStateNotifier = context.read(
          analysePostsStateNotifierProvider(id).notifier,
        );
        final analysePostState = watch(analysePostsStateNotifierProvider(id));
        return ProviderListener<AnalysePostsState>(
          provider: analysePostsStateNotifierProvider(id),
          onChange: (context, state) {
            state.maybeWhen(
              orElse: () {},
              loadFailure: (failure) =>
                  ScaffoldMessenger.of(context).showSnackBar(
                _errorSnackBar,
              ),
            );
          },
          child: analysePostState.when(
            started: () => PostWidget(
              text: text,
              onTap: () => analysePostStateNotifier.analyse(text),
            ),
            loadInProgress: () => PostWidget(
              text: text,
              emoji: '⏳',
            ),
            loadSuccess: (sentiment) => PostWidget(
              text: text,
              emoji: sentiment.emoji,
              backgroundColor: _mappedEmojiToColor(sentiment.emoji),
            ),
            loadFailure: (_) => PostWidget(
              text: text,
              onTap: () => analysePostStateNotifier.analyse(text),
              emoji: '❌',
            ),
          ),
        );
      },
    );
  }

  SnackBar get _errorSnackBar => SnackBar(
        content: Text(
          'There was a problem trying to connect to the servers, try again!',
        ),
        backgroundColor: Colors.red,
      );

  Color _mappedEmojiToColor(String emoji) =>
      <String, Color?>{
        '😐': Colors.grey[300],
        '😃': Colors.yellow[300],
        '😔': Colors.blue[300],
      }[emoji] ??
      Colors.white;
}
