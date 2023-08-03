import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response> get({required String url}) async {
    //debugPrint('servis calisti...');
    try {
    
      var response = await _dio.get(
        url,
      );
      if (response.statusCode != 200) {
        throw DioException(
            requestOptions: response.requestOptions,
            error: 'HTTP status error: ${response.statusCode}');
      }
      debugPrint(response.statusCode.toString());
      return response;
    } catch (e) {
      throw e;
    }
  }
}


