import 'package:cooknow/features/search/presentation/widget/custom_search.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomSearch(),
              Icon(Icons.chat_rounded, size: 30),
            ],
          ),
        ),
        body: ListView(
          children: [
            const Text('Lịch sử tìm kiếm'),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.history),
                    title: const Text('Cà phê'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_horiz),
                    ),
                  );
                },
              ),
            ),
            const Text('Các món ăn đã xem gần đây'),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const SizedBox(
                    width: 200,
                    child: ListTile(
                      leading: Icon(Icons.history),
                      title: Text('Cà phê'),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 500,
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: Icon(Icons.hd_outlined),
                      title: Text('Cà phê'),
                    );
                  }),
            )
          ],
        ));
  }
}
