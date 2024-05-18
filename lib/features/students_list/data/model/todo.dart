import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

@immutable
class Todo extends Equatable{
  const Todo({
  required this.id, 
  required  this.description,
  this.completed=false
  });
  
  final String id;
  final String description; 
  final bool completed;

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(id: json['id'].toString(), description: json['todo'], completed: json['completed']);
  }
  
  @override
  List<Object?> get props {
    return [
      id,
      description,
      completed
    ];
  }

}