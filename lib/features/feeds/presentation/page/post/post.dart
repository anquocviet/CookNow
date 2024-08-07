import 'package:flutter/material.dart';
import 'package:cooknow/features/posts/domain/post/post.dart' as d;

class Post extends StatefulWidget {
  const Post({super.key, required this.post});

  final d.Post post;

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    final d.Post post = widget.post;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                child: Image.network(
                  post.owner.avatar,
                ),
              ),
              Column(
                children: [
                  Text(post.owner.name),
                  const Text('2 hours ago'),
                ],
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
            ],
          ),
          Text(post.name),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              post.image,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (post.emojis.isNotEmpty)
                Row(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 60,
                      child: ListView.separated(
                        itemCount: 3,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CircleAvatar(
                            radius: 8,
                            child: Image.network(
                              'https://avatars.githubusercontent.com/u/139426',
                              width: 16,
                              height: 16,
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(width: 4);
                        },
                      ),
                    ),
                    Text('${post.emojis.length} luợt thích'),
                  ],
                ),
              Row(
                children: [
                  Text('0 bình luận'),
                  const SizedBox(width: 4),
                  Text('10 lượt chia sẻ'),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.comment_outlined)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.ios_share)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.bookmark_outline))
            ],
          ),
        ],
      ),
    );
  }
}
