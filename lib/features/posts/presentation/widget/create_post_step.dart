import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/posts/application/post_service.dart';
import 'package:cooknow/features/posts/presentation/widget/media_step.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class Item {
  int? item;
  String? text;
  final Set<XFile>? medias;

  Item(this.item, this.text, this.medias);
}

class CreatePostStep extends ConsumerStatefulWidget {
  const CreatePostStep({super.key, required this.items});

  final List<Item> items;

  @override
  ConsumerState<CreatePostStep> createState() => _CreatePostStepState();
}

class _CreatePostStepState extends ConsumerState<CreatePostStep> {
  Future<void> _onChooseImage(int index, String type) async {
    try {
      final List<String> chooseMedia = await ref
          .read(postServiceProvider)
          .chooseMedia(true, type == 'video');
      if (chooseMedia.isNotEmpty) {
        setState(() {
          widget.items[index].medias!.addAll(chooseMedia.map((e) => XFile(e)));
        });
      }
    } catch (e) {
      showError(context, 'Có lỗi xảy ra: $e');
    }
  }

  void _removeItem(int index) {
    setState(() {
      widget.items.removeAt(index);
    });
  }

  void _removeMediaOfItem(int index, int indexMedia) {
    setState(() {
      widget.items[index].medias!
          .remove(widget.items[index].medias!.elementAt(indexMedia));
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Item> items = widget.items;

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
          height: items.length * 135.0 +
              items.length * 50 +
              items.fold(0,
                  (prev, item) => prev + 60 * (item.medias!.isEmpty ? 0 : 1)),
          child: ReorderableListView.builder(
            onReorderStart: (_) {
              FocusScope.of(context).unfocus();
            },
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                titleAlignment: ListTileTitleAlignment.titleHeight,
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                key: ObjectKey(items[index]),
                leading: Container(
                  margin: const EdgeInsets.only(top: 8, left: 8),
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
                trailing: Container(
                  margin: const EdgeInsets.only(top: 8, right: 8),
                  child: ReorderableDragStartListener(
                    index: index,
                    child: const Icon(Icons.drag_handle),
                  ),
                ),
                title: TextFormField(
                  initialValue: items[index].text,
                  onChanged: (String? value) {
                    setState(() {
                      items[index].text = value!;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Bước ${index + 1}: Làm gì đó',
                  ),
                ),
                subtitle: Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 300,
                        height: 60 * (items[index].medias!.isEmpty ? 0 : 1),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: items[index].medias!.length,
                          shrinkWrap: true,
                          itemBuilder: ((context, indexMedia) {
                            final List<String> currentMedias = items[index]
                                .medias!
                                .map((e) => e.path)
                                .toList();
                            return Card(
                              margin: const EdgeInsets.all(4),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: MediaStep(
                                    listPath: currentMedias,
                                    currentPath:
                                        currentMedias.elementAt(indexMedia),
                                    onRemove: () =>
                                        _removeMediaOfItem(index, indexMedia)),
                              ),
                            );
                          }),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton.filledTonal(
                            onPressed: () => _onChooseImage(index, 'image'),
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
                            onPressed: () => _onChooseImage(index, 'video'),
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
                      const SizedBox(height: 4),
                      IconButton.filledTonal(
                        onPressed: items.length <= 1
                            ? null
                            : () => showConfirmRemove(
                                  context,
                                  () => _removeItem(index),
                                  content:
                                      'Bạn có chắc chắn muốn xóa bước này?',
                                ),
                        icon: const Icon(Icons.delete),
                      ),
                    ],
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
              items.add(Item(items.length, '', {}));
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
