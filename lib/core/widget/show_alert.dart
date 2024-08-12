import 'package:flutter/material.dart';

void showError(BuildContext context, String error) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(error),
        backgroundColor: Colors.red,
      ),
    );
  });
}

void showSuccess(BuildContext context, String success) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(success),
        backgroundColor: Colors.green[400],
      ),
    );
  });
}

void showConfirmRemove(
  BuildContext context,
  void Function() onRemove, {
  String? title = "Thông báo",
  String? content = "Bạn có chắc chắn muốn xóa không?",
}) {
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
            width: MediaQuery.of(context).size.width * 0.85,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title!,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      content!,
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .maybePop(); // Đóng dialog khi nhấn "Cancel"
                          },
                          child: const Text("Không"),
                        ),
                        TextButton(
                          onPressed: () {
                            onRemove();
                            Navigator.of(context)
                                .maybePop(); // Đóng dialog khi nhấn "Continue"
                          },
                          child: const Text("Đồng ý"),
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
