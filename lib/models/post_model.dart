class PostModel {
  final int userid;
  final int id;
  final String title;
  final String body;

  PostModel(this.userid, this.id, this.title, this.body);

  factory PostModel.fromjson(Map json) {
    return PostModel(
      json['userId'],
      json['id'],
      json['title'],
      json['body'],
    );
  }

  @override
  String toString() => 'id: $id';
}
