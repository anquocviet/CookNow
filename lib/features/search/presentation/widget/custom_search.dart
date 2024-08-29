import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/features/search/application/search_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CustomSearch extends ConsumerStatefulWidget {
  const CustomSearch({super.key});

  @override
  ConsumerState<CustomSearch> createState() => _CustomSearchState();
}

class _CustomSearchState extends ConsumerState<CustomSearch> {
  late TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SearchBar(
      controller: _controller,
      hintText: 'Tìm kiếm',
      leading: const Icon(Icons.search),
      elevation: const WidgetStatePropertyAll(0),
      keyboardType: TextInputType.text,
      constraints: BoxConstraints(
        minHeight: 44,
        maxWidth: width - 80,
      ),
      onSubmitted: (value) {
        if (value.isEmpty) return;
        ref.read(searchServiceProvider).addHistorySearch(value.trim());
        context.go('${RouteName.search}/${RouteName.resultSearch}',
            extra: value);
      },
      onTap: () {
        _controller.selection = TextSelection(
          baseOffset: 0,
          extentOffset: _controller.value.text.length,
        );
      },
    );
  }
}
