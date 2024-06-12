import 'package:cooknow/features/profile/presentation/widget/tab_personal_post.dart';
import 'package:cooknow/features/profile/presentation/widget/tab_saved_post.dart';
import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      NetworkImage('http://via.placeholder.com/200x200'),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'An Quốc Việt',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '@anquocviet',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.cake_rounded, size: 20),
                        SizedBox(width: 4),
                        Text(
                          '19',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_sharp, size: 20),
                        Text(
                          'TP Hồ Chí Minh',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Tôi là An Quốc Việt, tôi yêu thích nấu ăn',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Text(
                  'người theo dõi',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  'đang theo dõi',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: TabContainer(
                  tabEdge: TabEdge.top,
                  selectedTextStyle: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedTextStyle: const TextStyle(
                    fontSize: 13.0,
                  ),
                  tabs: const [
                    Text('Bài viết cá nhân'),
                    Text('Bài viết đã lưu'),
                  ],
                  children: const [
                    TabPersonalPost(),
                    TabSavedPost(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
