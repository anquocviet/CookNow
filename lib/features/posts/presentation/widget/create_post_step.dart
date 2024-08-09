import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class Item {
  int? item;
  String? text;
  final Set<XFile>? medias;

  Item(this.item, this.text, this.medias);
}

class CreatePostStep extends StatefulWidget {
  const CreatePostStep({super.key, required this.items});

  final List<Item> items;

  @override
  State<CreatePostStep> createState() => _CreatePostStepState();
}

class _CreatePostStepState extends State<CreatePostStep> {
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    final List<Item> items = widget.items;

    Future getImage(int index, String type) async {
      final XFile? file = type == 'image'
          ? await _picker.pickImage(source: ImageSource.gallery)
          : await _picker.pickVideo(source: ImageSource.gallery);
      file != null
          ? setState(() {
              items[index].medias!.add(file);
            })
          : null;
    }

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
                            return Card(
                              margin: const EdgeInsets.all(4),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child:
                                    RegExp(r'^(mp4|mov)$', caseSensitive: false)
                                            .hasMatch(items[index]
                                                .medias!
                                                .elementAt(indexMedia)
                                                .path
                                                .split('.')
                                                .last)
                                        ? AspectRatio(
                                            aspectRatio: 16 / 9,
                                            child: VideoPlayer(
                                              VideoPlayerController.asset(
                                                items[index]
                                                    .medias!
                                                    .elementAt(indexMedia)
                                                    .path,
                                                videoPlayerOptions:
                                                    VideoPlayerOptions(
                                                        mixWithOthers: true),
                                              ),
                                            ),
                                          )
                                        : Image.asset(
                                            items[index]
                                                .medias!
                                                .elementAt(indexMedia)
                                                .path,
                                            width: 60,
                                            height: 60,
                                            fit: BoxFit.cover,
                                          ),
                              ),
                            );
                          }),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton.filledTonal(
                            onPressed: () => getImage(index, 'image'),
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
                            onPressed: () => getImage(index, 'video'),
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
                            : () => showAlertDialog(context),
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

_showConfirmRemove(BuildContext context, void Function()? onConfirm) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: const Text("Không"),
    onPressed: () {},
  );
  Widget confirmButton = TextButton(
    onPressed: onConfirm,
    child: const Text("Đồng ý"),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Thông báo"),
    content: const Text(
        "Bạn có chắc chắn muốn xóa bước này không? Mọi thông tin đã nhập sẽ bị mất."),
    actions: [
      cancelButton,
      confirmButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

void showAlertDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "Barrier",
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, animation1, animation2) {
      return Align(
        alignment: Alignment.center,
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.75,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                // Local state variables
                bool isChecked = false;

                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "AlertDialog",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Would you like to continue learning how to use Flutter alerts?",
                      textAlign: TextAlign.center,
                    ),
                    CheckboxListTile(
                      title: const Text("Check me!"),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value ?? false;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .maybePop(); // Đóng dialog khi nhấn "Cancel"
                          },
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .maybePop(); // Đóng dialog khi nhấn "Continue"
                          },
                          child: const Text("Continue"),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      );
    },
  );
}
