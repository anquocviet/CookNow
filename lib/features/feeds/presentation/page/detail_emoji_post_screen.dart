import 'package:cooknow/features/posts/domain/emoji/emoji.dart';
import 'package:cooknow/features/user/application/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailEmojiPostScreen extends ConsumerWidget {
  const DetailEmojiPostScreen({super.key, required this.emojis});

  final List<Emoji> emojis;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yêu thích'),
      ),
      body: ListView.builder(
        itemCount: emojis.length,
        itemBuilder: (context, index) {
          final emoji = emojis[0];
          final user =
              ref.read(userServiceProvider).fetchUser(emoji.v.elementAt(index));
          return FutureBuilder(
            future: user,
            builder: (context, snapshot) => snapshot.hasData
                ? ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      child: Image.network(
                        snapshot.data!.avatar,
                      ),
                    ),
                    trailing: FilledButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          Theme.of(context).primaryColor,
                        ),
                        padding: WidgetStateProperty.all(
                          const EdgeInsets.symmetric(horizontal: 16),
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Theo dõi'),
                    ),
                    title: Text(snapshot.data!.name),
                  )
                : const CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
