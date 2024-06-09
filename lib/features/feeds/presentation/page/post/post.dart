import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                child: Image.network(
                  'https://avatars.githubusercontent.com/u/139426',
                ),
              ),
              const Column(
                children: [
                  Text('John Doe'),
                  Text('2 hours ago'),
                ],
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
            ],
          ),
          const Text(
              'Chào mọi người đây là cây mới của mình. Hãy theo dõi mình nhé!'),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://avatars.githubusercontent.com/u/139401',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                  const Text('28 luợt thích'),
                ],
              ),
              const Row(
                children: [
                  Text('10 bình luận'),
                  SizedBox(width: 4),
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
