import 'dart:convert';

import 'package:http/http.dart' show Client;
import 'package:zara_ao/features/data/datasources/db/remote/todo_remote_datasource.dart';
import 'package:zara_ao/features/data/model/todo.dart';
import 'package:zara_ao/core/constants/Constants.dart';

class TodoRepository{
  final TodoRemoteDatasource datasource;

  TodoRepository({required this.datasource});


  Future<List<Todo>> getAllTodo(){
    return datasource.getAllTodo();
  }
}