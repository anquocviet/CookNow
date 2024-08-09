import 'package:cooknow/core/widget/custom_button.dart';
import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/posts/presentation/controller/create_post_screen_controller.dart';
import 'package:cooknow/features/posts/presentation/widget/create_post_ingredient.dart'
    as ing;
import 'package:cooknow/features/posts/presentation/widget/create_post_step.dart'
    as step;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreatePostScreen extends ConsumerStatefulWidget {
  const CreatePostScreen({super.key});

  @override
  ConsumerState<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends ConsumerState<CreatePostScreen> {
  AsyncValue<String>? _previousImagePath;
  final _formKey = GlobalKey<FormState>();
  final _node = FocusScopeNode();
  final _nameDish = TextEditingController();
  final _nopEating = TextEditingController();
  final _timeCooking = TextEditingController();

  String get nameDish => _nameDish.text;
  String get nopEating => _nopEating.text;
  String get timeCooking => _timeCooking.text;

  final List<ing.Item> listIngredient =
      List<ing.Item>.generate(2, (int index) => ing.Item(index, ''));
  final List<step.Item> listStep =
      List<step.Item>.generate(2, (int index) => step.Item(index, '', {}));

  void _onChooseImage() {
    try {
      ref.read(createPostScreenControllerProvider.notifier).chooseImage();
    } catch (e) {
      showError(context, 'Có lỗi xảy ra: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(createPostScreenControllerProvider);
    if (state.hasValue && !state.isLoading && !state.hasError) {
      _previousImagePath = state;
    }

    return GestureDetector(
      onTap: () => _node.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              IconButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                ),
                onPressed: state.isLoading ? null : _onChooseImage,
                icon: state.when(
                  data: (value) => Image.asset(
                    value,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  error: (error, stack) => Image.asset(
                    _previousImagePath?.asData?.value ??
                        'assets/create_post_image.png',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  loading: () => Image.asset(
                    _previousImagePath?.asData?.value ??
                        'assets/create_post_image.png',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              FocusScope(
                node: _node,
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Tên món ăn của bạn',
                            contentPadding: EdgeInsets.all(16),
                          ),
                          controller: _nameDish,
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Expanded(child: Text('Số người ăn')),
                            Expanded(
                              flex: 2,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: '2 người',
                                  contentPadding: EdgeInsets.all(16),
                                ),
                                controller: _nopEating,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Expanded(child: Text('Thời gian nấu')),
                            Expanded(
                              flex: 2,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: '1h 30p',
                                  contentPadding: EdgeInsets.all(16),
                                ),
                                controller: _timeCooking,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Add CreatePostIngredient
              ing.CreatePostIngredient(items: listIngredient),
              const SizedBox(height: 16),
              step.CreatePostStep(
                items: listStep,
              ),
              const SizedBox(height: 56),
            ],
          ),
        ),
        bottomSheet: CustomButton(
          "Đăng tải",
          onPressed: () => (),
        ),
      ),
    );
  }
}
