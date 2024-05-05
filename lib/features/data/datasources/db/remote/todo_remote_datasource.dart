import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:zara_ao/core/constants/Constants.dart';
import 'package:zara_ao/features/data/model/todo.dart';
import 'package:zara_ao/core/constants/Constants.dart';

part 'todo_remote_datasource.g.dart';


@RestApi(baseUrl: Constants.baseUri)
abstract class TodoRemoteDatasource{

 factory TodoRemoteDatasource(Dio dio, {String baseUrl}) = _TodoRemoteDatasource;

  @GET(Constants.getTodoApiUrl)
  @Headers({"Content-Type": "application/json"})
  Future<List<Todo>>getAllTodo();
}