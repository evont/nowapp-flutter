import 'package:dio/dio.dart';
import 'dart:convert';

class Api {
  static final String HOST = 'http://now.nefelibata.art/api/v1/';
  static final String HOME = HOST + 'home';
  static final String POEM = HOST + 'poem';
  static final String NIPPONCOLOR = HOST + 'getColor';
  static final String ENCLAVE = HOST + 'enclave';
  static final String ENCLAVE_ARTICLE = HOST + 'enclave/article';
  static final String ESSAY = HOST + 'essay';
  static final String TOTHEEND = HOST + 'totheend/today';
}

class ApiClient {
  static request(String url, [Map<String, dynamic> params = const {}]) async {
    Dio dio = new Dio(new BaseOptions(responseType: ResponseType.json));
    Response response = await dio.get(url, queryParameters: params);
    return jsonDecode(response.data);
  }
}