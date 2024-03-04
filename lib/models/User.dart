import 'dart:convert';

class UserModel {
  UserModel({
    required this.token,
    required this.account,
  });

  Token token;
  Account account;

  factory UserModel.fromJson(String str) => UserModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
    token: Token.fromMap(json["token"]),
    account: Account.fromMap(json["account"]),
  );

  Map<String, dynamic> toMap() => {
    "token": token.toMap(),
    "account": account.toMap(),
  };
}

class Token {
  Token({
    required this.access,
  });

  String access;

  factory Token.fromJson(String str) => Token.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Token.fromMap(Map<String, dynamic> json) => Token(
    access: json["access"],
  );

  Map<String, dynamic> toMap() => {
    "access": access,
  };
}

class Account {
  Account({
    required this.email,
  });

  String email;

  factory Account.fromJson(String str) => Account.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Account.fromMap(Map<String, dynamic> json) => Account(
    email: json["email"],
  );

  Map<String, dynamic> toMap() => {
    "email": email,
  };
}
