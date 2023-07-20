import 'dart:convert';

import 'package:dio/dio.dart';

class HttpService{

  final Dio _dio;

  HttpService._(this._dio);

  factory HttpService() {
    Dio dio = Dio();
    // dio.interceptors.add(HttpInterceptor(dio));
    return HttpService._(dio);
  }

  Future<Response> get(String url, [Map<String, String>? headers]) {
    return _dio.get(url, options: Options(headers: headers));
  }

  Future<Response> post(String url, {Map<String, String>? headers, Object? corpo}) {
    bool json = !(corpo != null && corpo is String);
    String body = json ? jsonEncode(corpo) : corpo;
    String contentType = json ? Headers.jsonContentType : Headers.textPlainContentType;
    Map<String, String> headersRequest = headers ?? {};
    return _dio.post(url, options: Options(headers: headersRequest, contentType: contentType), data: body);
  }

  Future<Response> put(String url, {Map<String, String>? headers, Object? corpo}) {
    bool json = !(corpo != null && corpo is String);
    String body = json ? jsonEncode(corpo) : corpo;
    String contentType = json ? Headers.jsonContentType : Headers.textPlainContentType;
    Map<String, String> headersRequest = headers ?? {};
    return _dio.put(url, options: Options(headers: headersRequest, contentType: contentType), data: body);
  }

  Future<Response> delete(String url, {Map<String, String>? headers, Object? corpo}) {
    bool json = !(corpo != null && corpo is String);
    String body = json ? jsonEncode(corpo) : corpo;
    String contentType = json ? Headers.jsonContentType : Headers.textPlainContentType;
    Map<String, String> headersRequest = headers ?? {};
    return _dio.delete(url, options: Options(headers: headersRequest, contentType: contentType), data: body);
  }

  Future<void> download(String url, String caminhoArquivo) {
    return _dio.download(url, caminhoArquivo, deleteOnError: true);
  }

}