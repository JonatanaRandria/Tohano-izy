
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zara_ao/config/app_http.dart';
import 'package:zara_ao/core/constants/Constants.dart';
import 'package:zara_ao/features/students_list/data/model/todo.dart';



class StudentListProvider extends  ChangeNotifier {

    final AppHttp _http = AppHttp(baseUrl: Constants.baseUri);


  Todo ? _nrm;
  bool isLoading = false;
   void search(String searchTerm, {bool input = true}) async {
    if (isLoading == true) {
      isLoading = false;
    }

    Response res = await _http
        .get(Constants.getTodoApiUrl);
    if (res.statusCode == 200 && res.statusCode != 429) {
      //print (res);
      
      _nrm = Todo.fromJson(res as Map<String, dynamic>);
      isLoading = true;
      input = false;
      notifyListeners();
    }
  }
}