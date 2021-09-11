class User {
  String name;
  String email;
  String cpf;
  String password;
  String role;
  String phone;
  String birthdate;
  String freashman;

  User(
      {required this.name,
      required this.email,
      required this.cpf,
      required this.password,
      required this.role,
      required this.phone,
      required this.birthdate,
      required this.freashman});

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'],
        cpf = json['cpf'],
        password = json['password'],
        role = json['role'],
        phone = json['phone'],
        birthdate = json['birthdate'],
        freashman = json['freashman'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['cpf'] = this.cpf;
    data['password'] = this.password;
    data['role'] = this.role;
    data['phone'] = this.phone;
    data['birthdate'] = this.birthdate;
    data['freashman'] = this.freashman;
    return data;
  }
}
