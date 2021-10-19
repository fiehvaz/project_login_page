import 'package:project_login_page/models/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getList();
}
