part of 'filtered_todos_bloc.dart';

abstract class FilteredTodosEvent extends Equatable {
  const FilteredTodosEvent();

  @override
  List<Object> get props => [];
}

class CalculatedFilteredTodosEvent extends FilteredTodosEvent {
  final List<Todo> filteredTodos;
  const CalculatedFilteredTodosEvent({
    required this.filteredTodos,
  });

  @override
  String toString() =>
      'CalculatedFilteredTodosEvent(filteredTodos: $filteredTodos)';

  @override
  List<Object> get props => [filteredTodos];
}
