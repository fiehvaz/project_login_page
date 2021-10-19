import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:project_login_page/models/post_model.dart';
import 'package:project_login_page/repositories/home_repository.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    var value = await rootBundle.loadString('assets/data.json');
    List postJson = jsonDecode(value);
    return postJson.map((e) => PostModel.fromjson(e)).toList();
  }
}
