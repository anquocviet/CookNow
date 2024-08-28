import 'package:cooknow/core/router/router_app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomSearch extends StatefulWidget {
  const CustomSearch({super.key});

  @override
  State<CustomSearch> createState() => _CustomSearchState();
}

class _CustomSearchState extends State<CustomSearch> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SearchBar(
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
          context.go('${RouteName.search}/${RouteName.resultSearch}',
              extra: value);
        });
  }
}
