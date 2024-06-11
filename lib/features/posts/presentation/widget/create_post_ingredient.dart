import 'package:flutter/material.dart';

class Item {
  int? item;
  String? text;

  Item(this.item, this.text);
}

class CreatePostIngredient extends StatefulWidget {
  const CreatePostIngredient({super.key});

  @override
  State<CreatePostIngredient> createState() => _CreatePostIngredientState();
}

class _CreatePostIngredientState extends State<CreatePostIngredient> {
  final List<Item> _items =
      List<Item>.generate(2, (int index) => Item(index, ''));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Nguyên liệu',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
        ),
        SizedBox(
          height: _items.length * 72.0,
          child: ReorderableListView.builder(
            onReorderStart: (_) {
              FocusScope.of(context).unfocus();
            },
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _items.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                key: ObjectKey(_items[index]),
                leading: IconButton(
                  icon: const Icon(Icons.more_horiz),
                  onPressed: () {},
                ),
                trailing: ReorderableDragStartListener(
                  index: index,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(Icons.drag_handle),
                  ),
                ),
                title: TextFormField(
                  initialValue: _items[index].text,
                  onChanged: (String? value) {
                    setState(() {
                      _items[index].text = value!;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Nhập nguyên liệu',
                  ),
                ),
              );
            },
            onReorder: (int oldIndex, int newIndex) {
              setState(() {
                if (oldIndex < newIndex) {
                  newIndex -= 1;
                }
                final Item listItem = _items.removeAt(oldIndex);
                _items.insert(newIndex, listItem);
              });
            },
          ),
        ),
        TextButton.icon(
          onPressed: () {
            setState(() {
              _items.add(Item(_items.length, ''));
            });
          },
          icon: const Icon(Icons.add),
          style: TextButton.styleFrom(
            iconColor: Colors.black,
          ),
          label: const Text(
            'Nguyên liệu',
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}
