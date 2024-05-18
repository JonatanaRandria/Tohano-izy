
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
  Future<List<Todo>> getAllTodo() async {

    try {
      Response response = await _dio.get(Constants.getTodoApiUrl);
      List<Todo> todoList = response.data.map((dynamic item) {
      return Todo.fromJson(item); 
    }).toList();

    return todoList;
     
  }
 catch(e){
        throw Exception('Eror ${e}');
    } 
  }
}