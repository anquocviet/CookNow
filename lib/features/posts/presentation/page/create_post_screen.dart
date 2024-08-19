import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/core/utils/check_formats.dart';
import 'package:cooknow/core/widget/custom_button.dart';
import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/posts/data/dtos/create_post_dto.dart';
import 'package:cooknow/features/posts/data/dtos/update_post_dto.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:cooknow/features/posts/presentation/controller/create_post_screen_controller.dart';
import 'package:cooknow/features/posts/presentation/widget/create_post_ingredient.dart'
    as ing;
import 'package:cooknow/features/posts/presentation/widget/create_post_step.dart'
    as step;
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CreatePostScreen extends ConsumerStatefulWidget {
  const CreatePostScreen({super.key, this.post});

  final Post? post;

  @override
  ConsumerState<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends ConsumerState<CreatePostScreen> {
  final _formKey = GlobalKey<FormState>();
  final _node = FocusScopeNode();
  final _nameDish = TextEditingController();
  final _nopEating = TextEditingController();
  final _timeCooking = TextEditingController();
  AsyncValue<List<String>>? _previousImagePath;

  String get nameDish => _nameDish.text;
  String get nopEating => _nopEating.text;
  String get timeCooking => _timeCooking.text;

  final List<ing.Item> listIngredient =
      List<ing.Item>.generate(2, (int index) => ing.Item(index, ''));
  final List<step.Item> listStep =
      List<step.Item>.generate(2, (int index) => step.Item(index, '', {}));

  @override
  void initState() {
    if (widget.post != null) {
      _nameDish.text = widget.post!.name;
      _nopEating.text = widget.post!.nopEat.toString();
      _timeCooking.text = widget.post!.prepareTime;
      listIngredient.clear();
      listIngredient.addAll(widget.post!.ingredients
          .map((e) => ing.Item(listIngredient.length, e)));
      listStep.clear();
      listStep.addAll(
        widget.post!.steps.map(
          (e) => step.Item(
            listStep.length,
            e.content,
            e.medias.toSet(),
          ),
        ),
      );
      _previousImagePath = AsyncValue.data([widget.post!.image]);
      Future(() => ref
          .read(valueCreatePostScreenControllerProvider.notifier)
          .initImage(widget.post!.image));
    }
    super.initState();
  }

  void _onChooseImage() async {
    try {
      await ref
          .watch(valueCreatePostScreenControllerProvider.notifier)
          .chooseMedia();
    } on StateError catch (e) {
      if (mounted) showError(context, 'Có lỗi xảy ra: $e');
    } catch (e) {
      if (mounted) showError(context, 'Có lỗi xảy ra: $e');
    }
  }

  Future<void> _submit(bool isCreateNew) async {
    try {
      if (!_checkValid()) {
        showError(context, 'Vui lòng điền đầy đủ thông tin');
        return;
      }
      final currentUser = ref.read(userRepositoryProvider).currentUser;
      final dto = CreatePostDto(
        name: nameDish,
        image: _previousImagePath!.asData!.value.first,
        nopEat: int.tryParse(nopEating) ?? 0,
        category: 'Món ăn',
        prepareTime: timeCooking,
        ownerId: currentUser!.id,
        ingredients: listIngredient
            .where((e) => e.text?.isNotEmpty ?? false)
            .map((e) => e.text!)
            .toList(),
        steps: listStep
            .where((e) => e.text?.isNotEmpty ?? false || e.medias!.isNotEmpty)
            .map((step) => CreateStep.fromJson({
                  'content': step.text,
                  'medias': step.medias!.toList(),
                }))
            .toList(),
      );
      // Check if create new or update
      if (isCreateNew) {
        await ref
            .read(createPostScreenControllerProvider.notifier)
            .createPost(dto);
      } else {
        // If update, copy from CreatePostDto and add id, then update
        final updateDto = UpdatePostDto.fromJson({
          ...dto.toJson(),
          'id': widget.post!.id,
        });
        await ref
            .read(createPostScreenControllerProvider.notifier)
            .updatePost(updateDto);
      }

      // Reset state and navigate to home
      if (mounted) _disposeWhenSuccess();
    } on Exception catch (e) {
      if (mounted && !e.toString().contains("Không có")) {
        showError(context, 'Có lỗi xảy ra: $e');
      }
    }
  }

  void _disposeWhenSuccess() {
    listIngredient.clear();
    listStep.clear();
    listIngredient
        .addAll(List<ing.Item>.generate(2, (int index) => ing.Item(index, '')));
    listStep.addAll(
        List<step.Item>.generate(2, (int index) => step.Item(index, '', {})));
    _previousImagePath = null;
    _nameDish.text = '';
    _nopEating.text = '';
    _timeCooking.text = '';
    _node.requestFocus(FocusNode());
  }

  bool _checkValid() {
    return _previousImagePath?.value?.first != 'assets/create_post_image.png' &&
        _nameDish.text.isNotEmpty &&
        _nopEating.text.isNotEmpty &&
        _timeCooking.text.isNotEmpty &&
        listIngredient.any((e) => e.text?.isNotEmpty ?? false);
  }

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _node.dispose();
    _nameDish.dispose();
    _nopEating.dispose();
    _timeCooking.dispose();
    _previousImagePath = null;
    listIngredient.clear();
    listStep.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(valueCreatePostScreenControllerProvider);
    final controller = ref.watch(createPostScreenControllerProvider);

    if (state.hasValue && !state.isLoading && !state.hasError) {
      _previousImagePath = state;
    }

    return GestureDetector(
      // Hide keyboard when tap outside
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: widget.post == null
            ? null
            : AppBar(
                leadingWidth: 80,
                leading: IconButton(
                  onPressed: () => context.go(RouteName.home),
                  icon: TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text(
                      'Hủy',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: controller.isLoading
                        ? null
                        : () {
                            _submit(false);
                            Navigator.of(context).pop();
                          },
                    child: const Text("Cập nhật",
                        style: TextStyle(color: Colors.black87)),
                  ),
                ],
              ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              IconButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                ),
                onPressed: state.isLoading ? null : _onChooseImage,
                icon: state.when(
                  data: (value) => _renderImage(value.first),
                  error: (error, stack) => Image.asset(
                    _previousImagePath!.asData!.value.first,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  loading: () => _renderImage(
                      _previousImagePath?.asData?.value.first ??
                          state.value!.first),
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
              const SizedBox(height: 24),

              // Add CreatePostIngredient
              ing.CreatePostIngredient(items: listIngredient),
              const SizedBox(height: 16),
              // Add CreatePostStep
              step.CreatePostStep(
                items: listStep,
              ),
              const SizedBox(height: 56),
            ],
          ),
        ),
        bottomSheet: widget.post != null
            ? null
            : controller.isLoading
                ? const LinearProgressIndicator()
                : CustomButton(
                    "Đăng tải",
                    onPressed: controller.isLoading
                        ? null
                        : () async {
                            await _submit(true);
                            context.go(RouteName.home);
                          },
                  ),
      ),
    );
  }

  Widget _renderImage(String path) => isLinkOnline(path)
      ? Image.network(
          path,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        )
      : Image.asset(
          path,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        );
}
