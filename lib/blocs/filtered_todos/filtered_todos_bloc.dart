import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_todo_bloc/data/models/todo_model.dart';

part 'filtered_todos_event.dart';
part 'filtered_todos_state.dart';

class FilteredTodosBloc extends Bloc<FilteredTodosEvent, FilteredTodosState> {
  final List<Todo> initialTodos;

  FilteredTodosBloc({required this.initialTodos})
      : super(FilteredTodosState(filteredTodo: initialTodos)) {
    on<CalculatedFilteredTodosEvent>((event, emit) {
      emit(state.copyWith(filteredTodo: event.filteredTodos));
    });
  }
}
