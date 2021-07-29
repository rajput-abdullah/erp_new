class LoginData {
  LoginData({this.token, this.uid});

  final String token;
  final int uid;

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      LoginData(
        uid: json["uid"],
        token: json["token"],
      );
}
