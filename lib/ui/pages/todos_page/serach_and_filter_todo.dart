import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo_bloc/blocs/todo_filter/todo_filter_bloc.dart';

import '../../../blocs/todo_search/todo_search_bloc.dart';
import '../../../data/models/todo_model.dart';

class SearchAndFilterTodo extends StatelessWidget {
  const SearchAndFilterTodo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
            labelText: "Search todos ...",
            border: InputBorder.none,
            filled: true,
            prefix: Icon(Icons.search),
          ),
          onChanged: (String? newSearhTerm) {
            if (newSearhTerm != null) {
              context.read<TodoSearchBloc>().add(
                    SetSearchTermEvent(newSearchTerm: newSearhTerm),
                  );
            }
          },
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            filterButton(context, Filter.all),
          ],
        )
      ],
    );
  }
}

Widget filterButton(BuildContext context, Filter filter) {
  return TextButton(
    onPressed: () {
      context.read<TodoFilterBloc>().add(
            ChangeFilterEvent(newFilter: filter),
          );
    },
    child: Text(
      filter == Filter.all
          ? "All"
          : filter == Filter.active
              ? "Active"
              : "Completed",
      style: TextStyle(
        fontSize: 18.0,
        color: textColor(context, filter),
      ),
    ),
  );
}

Color textColor(BuildContext context, Filter filter) {
  final currentFilter = context.watch<TodoFilterBloc>().state.filter;
  return currentFilter == filter ? Colors.blueAccent : Colors.grey;
}
