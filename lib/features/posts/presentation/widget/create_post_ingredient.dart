import 'package:cooknow/core/widget/show_alert.dart';
import 'package:flutter/material.dart';

class Item {
  int? item;
  String? text;

  Item(this.item, this.text);
}

class CreatePostIngredient extends StatefulWidget {
  const CreatePostIngredient({super.key, required this.items});

  final List<Item> items;

  @override
  State<CreatePostIngredient> createState() => _CreatePostIngredientState();
}

class _CreatePostIngredientState extends State<CreatePostIngredient> {
  @override
  Widget build(BuildContext context) {
    final List<Item> items = widget.items;

    void removeItem(int index) {
      setState(() {
        items.removeAt(index);
      });
    }

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
          height: items.length * 72.0,
          child: ReorderableListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                key: ObjectKey(items[index]),
                leading: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: items.length <= 1
                      ? null
                      : () => showConfirmRemove(
                          context, () => removeItem(index),
                          content:
                              'Bạn có chắc chắn muốn xóa nguyên liệu này không?'),
                ),
                trailing: ReorderableDragStartListener(
                  index: index,
                  child: const Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Icon(Icons.drag_handle),
                  ),
                ),
                title: TextFormField(
                  initialValue: items[index].text,
                  onChanged: (String? value) {
                    setState(() {
                      items[index].text = value!;
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
                final Item listItem = items.removeAt(oldIndex);
                items.insert(newIndex, listItem);
              });
            },
          ),
        ),
        TextButton.icon(
          onPressed: () {
            setState(() {
              items.add(Item(items.length, ''));
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
