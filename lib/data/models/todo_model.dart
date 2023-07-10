import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

enum Filter { all, active, completed }

Uuid uuid = const Uuid();

class Todo extends Equatable {
  Todo({
    String? id,
    required this.desc,
    this.completed = false,
  }) : id = id ?? uuid.v4();

  final bool completed;
  final String desc;
  final String id;

  @override
  List<Object> get props => [id, desc, completed];

  @override
  bool? get stringify => true;

  @override
  String toString() => 'Todo(id: $id, desc: $desc, completed: $completed)';
}
