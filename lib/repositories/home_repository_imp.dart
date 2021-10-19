import 'package:project_login_page/models/post_model.dart';
import 'package:dio/dio.dart';
import 'home_repository.dart';

class HomeRepositoryImp implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      return (response.data as List).map((e) => PostModel.fromjson(e)).toList();
    } catch (e) {
      // print(e);
    }

    return [];
  }
}
