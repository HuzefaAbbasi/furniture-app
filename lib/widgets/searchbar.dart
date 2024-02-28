import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/search_bar/gf_search_bar.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;
  final bool hasScanIcon;

  const CustomSearchBar({
    super.key,
    required this.hintText,
    required this.hasScanIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GFSearchBar(
        searchBoxInputDecoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12), // to change height
            hintText: hintText,
            suffixIcon: (hasScanIcon)
                ? const Icon(CupertinoIcons.qrcode_viewfinder)
                : null,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(width: 1, color: Colors.grey)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(width: 1, color: Colors.blue))),
        searchList: const ['sofas', 'chairs', 'tables', 'cabinets', 'beds'],
        overlaySearchListItemBuilder: (String? item) {
          return Container(
            padding: const EdgeInsets.all(8),
            child: Text(
              item!,
              style: const TextStyle(fontSize: 18),
            ),
          );
        },
        searchQueryBuilder: (query, list) {
          return ['sofas'];
        });
  }
}
