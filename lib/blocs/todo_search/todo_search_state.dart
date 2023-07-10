part of 'todo_search_bloc.dart';

class TodoSearchState extends Equatable {
  final String serachTerm;
  const TodoSearchState({required this.serachTerm});

  factory TodoSearchState.initial() {
    return const TodoSearchState(serachTerm: '');
  }

  @override
  List<Object> get props => [serachTerm];

  @override
  String toString() => 'TodoSearchState(serachTerm: $serachTerm)';

  TodoSearchState copyWith({
    String? serachTerm,
  }) {
    return TodoSearchState(
      serachTerm: serachTerm ?? this.serachTerm,
    );
  }
}
