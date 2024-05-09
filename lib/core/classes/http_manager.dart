import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';

class Http extends HttpManager {
  Http({String? baseUrl, Map<String, dynamic>? headers})
      : super(baseUrl!, headers!);
}

class HttpManager {
  final Dio _dio = Dio();

  HttpManager([String baseUrl = '', Map<String, dynamic>? headers]) {
    _dio.options.baseUrl = baseUrl;
    _dio.options.headers = headers;

  
    if (kIsWeb) {
      _dio.options.headers['content-Type'] = '*';
      _dio.options.headers['Access-Control-Allow-Origin'] = '*';
      _dio.options.headers['Access-Control-Allow-Methods'] = '*';
    }

    if (!kIsWeb) {
      (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };      
    }
  }

  Future<Response> get(
    String url, {
    Map<String, dynamic>? params,
 
  }) async {
    Response? response;
    try {
      response = await _dio.get(
        url,
      );
      return response;
    } catch (e) {
      log(e.toString());
    }
    return response!;
  }

}