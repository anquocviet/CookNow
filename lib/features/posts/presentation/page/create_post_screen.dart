import 'package:cooknow/features/posts/presentation/widget/create_post_ingredient.dart';
import 'package:cooknow/features/posts/presentation/widget/create_post_step.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        toolbarHeight: 72,
        leading: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => context.pop(),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 12, right: 16),
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all(Colors.white),
                textStyle: WidgetStateProperty.all(
                  const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                backgroundColor:
                    WidgetStateProperty.all(Theme.of(context).primaryColor),
              ),
              onPressed: () {},
              child: const Text('Chia sẻ'),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {},
            child: Stack(
              children: [
                Image.network(
                  'https://placehold.it/200x200',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const Positioned.fill(
                  bottom: 20,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Thêm ảnh mô tả món ăn của bạn',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Tên món ăn của bạn',
                    contentPadding: EdgeInsets.all(16),
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Expanded(child: Text('Số người ăn')),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '2 người',
                          contentPadding: EdgeInsets.all(16),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Expanded(child: Text('Thời gian nấu')),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '1h 30p',
                          contentPadding: EdgeInsets.all(16),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const CreatePostIngredient(),
          const SizedBox(height: 16),
          const CreatePostStep(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
