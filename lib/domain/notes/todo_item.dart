import 'package:dartz/dartz.dart';
import 'package:ddd_bloc/domain/core/failures.dart';
import 'package:ddd_bloc/domain/core/value_objects.dart';
import 'package:ddd_bloc/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item.freezed.dart';

@freezed
abstract class TodoItem with _$TodoItem{
  const factory TodoItem({
    required UniqueId id,
    required TodoName name,
    required bool done,
  }) = _TodoItem;

  factory TodoItem.empty() => TodoItem(
    id: UniqueId(),
    name: TodoName(''),
    done: false,
  );
}

extension TodoItemX on TodoItem {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
