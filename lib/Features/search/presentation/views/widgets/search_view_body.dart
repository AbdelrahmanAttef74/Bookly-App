import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_search_text_field.dart';
import 'search_list_view_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSearchTextField(),
        SizedBox(height: 16),
        Text(
          'Search Results',
          style: Styles.testStyle18,
        ),
        SizedBox(height: 16),
        Expanded(child: SearchResultListView()),
      ],
    );
  }
}
