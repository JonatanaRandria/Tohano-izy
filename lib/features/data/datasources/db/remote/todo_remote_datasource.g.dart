part of 'todo_remote_datasource.dart';

class  _TodoRemoteDatasource implements TodoRemoteDatasource{
   _TodoRemoteDatasource(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://test.fr/noway';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<Todo>> getAllTodo() {
    // TODO: implement getAllTodo
    throw UnimplementedError();
  }


}