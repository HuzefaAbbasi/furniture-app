import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/search_bar/gf_search_bar.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GFSearchBar(
        searchBoxInputDecoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 8), // to change height
            hintText: "Search",
            suffixIcon: const Icon(CupertinoIcons.qrcode_viewfinder),
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
