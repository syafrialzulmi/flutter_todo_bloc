part of 'filtered_todos_bloc.dart';

class FilteredTodosState extends Equatable {
  final List<Todo> filteredTodo;
  const FilteredTodosState({
    required this.filteredTodo,
  });

  factory FilteredTodosState.initial() {
    return const FilteredTodosState(filteredTodo: []);
  }

  @override
  List<Object> get props => [filteredTodo];

  FilteredTodosState copyWith({
    List<Todo>? filteredTodo,
  }) {
    return FilteredTodosState(
      filteredTodo: filteredTodo ?? this.filteredTodo,
    );
  }

  @override
  String toString() => 'FilteredTodosState(filteredTodo: $filteredTodo)';
}
