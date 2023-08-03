import 'dart:html';
import 'dart:js';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/get_proposal_model.dart';
import '../service/get_service.dart';

final getProposalListProvider =
    FutureProvider.autoDispose<List<GetProposalModel>>((ref) async {
  final apiService = ApiService();
  //debugPrint('provider calisti');
  Response response;


  try {
    response = await apiService.get(url: 'https://run.mocky.io/v3/5db26931-6dfd-4a28-847e-fb121a5907e1');
  } catch (e) {
    if (e is DioException) {
      if (e.response?.statusCode != 200) {
  
      }
    }
    rethrow;
  }
  List<GetProposalModel> _proposalList = [];
  if (response.data['proposals'] != null) {
    _proposalList = (response.data['proposals'] as List)
        .map((e) => GetProposalModel.fromMap(e))
        .toList();
  }
  debugPrint("aaaaaaaaaaaaaaaaa${_proposalList.toString()}");
  return _proposalList;
});

 