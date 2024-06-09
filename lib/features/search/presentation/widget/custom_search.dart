import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
      constraints: BoxConstraints(
        minHeight: 50,
        maxWidth: width - 100,
      ),
    );
  }
}
