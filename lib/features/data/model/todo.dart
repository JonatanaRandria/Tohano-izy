

import 'package:uuid/uuid.dart';

const uuid = Uuid();


class Todo {
  const Todo({
   required this.id, 
  required  this.description,
  this.completed=false
  });
  
  final String id;
  final String description; 
  final bool completed;
  

}