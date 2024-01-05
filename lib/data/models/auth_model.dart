class AuthModel{
  String? name;String? pass;

  AuthModel(this.name, this.pass);
  AuthModel.fromJson(Map<String, dynamic> json) {
    name = json['email'];
    pass = json['pass'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = name;
    data['pass'] = pass;
    return data;
  }
}