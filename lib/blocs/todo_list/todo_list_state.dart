part of 'todo_list_bloc.dart';

class TodoListState extends Equatable {
  const TodoListState({
    required this.todos,
  });

  factory TodoListState.initial() {
    return TodoListState(todos: [
      Todo(desc: "Bangun Tidur", id: "1"),
      Todo(desc: "Mandi Pagi", id: "2"),
      Todo(desc: "Sarapan", id: "3"),
    ]);
  }

  final List<Todo> todos;

  @override
  List<Object> get props => [todos];

  @override
  String toString() => 'TodoListState(todos: $todos)';

  TodoListState copyWith({
    List<Todo>? todos,
  }) {
    return TodoListState(
      todos: todos ?? this.todos,
    );
  }
}
