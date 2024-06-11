import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Item {
  int? item;
  String? text;

  Item(this.item, this.text);
}

class CreatePostStep extends StatefulWidget {
  const CreatePostStep({super.key});

  @override
  State<CreatePostStep> createState() => _CreatePostStepState();
}

class _CreatePostStepState extends State<CreatePostStep> {
  final List<Item> _items =
      List<Item>.generate(2, (int index) => Item(index, ''));
  final ImagePicker _picker = ImagePicker();
  XFile? _image;
  XFile? _video;

  Future getImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  Future getVideo() async {
    final XFile? video = await _picker.pickVideo(source: ImageSource.gallery);
    setState(() {
      _video = video;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Các bước thực hiện',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
        ),
        SizedBox(
          height: _items.length * 130.0,
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
                  leading: Container(
                    margin: const EdgeInsets.only(left: 8),
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '${index + 1}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
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
                    decoration: InputDecoration(
                      hintText: 'Bước ${index + 1}: Làm gì đó',
                    ),
                  ),
                  subtitle: Container(
                    margin: const EdgeInsets.only(top: 12),
                    child: Row(
                      children: [
                        IconButton.filledTonal(
                          onPressed: getImage,
                          icon: const Icon(Icons.camera_alt_rounded),
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all(
                              const EdgeInsets.all(16),
                            ),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        IconButton.filledTonal(
                          onPressed: getVideo,
                          icon: const Icon(Icons.video_camera_back_rounded),
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all(
                              const EdgeInsets.all(16),
                            ),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ));
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
