class LoginRequestEntity {
  int? type;
  String? openId;
  String? name;
  String? email;

  LoginRequestEntity({
    this.type,
    this.name,
    this.email,
    this.openId,
  });

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "email": email,
        "openId": openId,
      };
}
