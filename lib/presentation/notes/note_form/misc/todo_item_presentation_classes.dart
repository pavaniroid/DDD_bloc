import 'package:ddd_bloc/domain/core/value_objects.dart';
import 'package:ddd_bloc/domain/notes/todo_item.dart';
import 'package:ddd_bloc/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item_presentation_classes.freezed.dart';

@freezed
abstract class TodoItemPrimitive implements _$TodoItemPrimitive {
  const TodoItemPrimitive._();

  const factory TodoItemPrimitive({
    required String id,
    required String name,
    required bool done,
  }) = _TodoItemPrimitive;

  factory TodoItemPrimitive.empty() =>
      TodoItemPrimitive(id: UniqueId().toString(), name: '', done: false);

  factory TodoItemPrimitive.fromDomain(TodoItem todoItem) {
    return TodoItemPrimitive(
        id: todoItem.id.getOrCrash(),
        name: todoItem.name.getOrCrash()!,
        done: todoItem.done);
  }

  TodoItem toDomain() {
    return TodoItem(
        id: UniqueId.fromUniqueString(id), name: TodoName(name), done: done);
  }
}
