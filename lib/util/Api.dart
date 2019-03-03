import 'package:dio/dio.dart';

class Api {
  static final String HOST = 'http://now.nefelibata.art/api/vi/';
  static final String HOME = HOST + 'home';
  static final String NIPPONCOLOR = HOST + 'getColor';
  static final String ENCLAVE = HOST + 'enclave';
  static final String ENCLAVE_ARTICLE = HOST + 'enclave/article';
  static final String ESSAY = HOST + 'essay';
  static final String TOTHEEND = HOST + 'totheend/today';
}

class Request {
  static get(String url, Map<String, dynamic> params) async {
    Dio dio = new Dio();
    Response response = await dio.get(url, queryParameters: params);
    return response.data;
  }
}