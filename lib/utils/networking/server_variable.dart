import 'package:dio/dio.dart';

class Server {
  static Dio dio = Dio();
  // static String baseUrl = 'https://amt7ani.herokuapp.com';
  static String baseUrl = 'https://a-e-backend.onrender.com';

  static String signIn = '/api/auth/signin';
  static String signUP = '/api/auth/signup';
  static String getCategories = '/api/home/get_categories';
  static late Options token;
  static late String to;
  static void setToken(String t){
     token = Options(
      responseType: ResponseType.json,
      headers: {
        'Authorization': 'Bearer $t',
        'accept': 'application/json;charset=utf-8',
      },
    );
     to=t;

  }

  // static token = Options(
  //   responseType: ResponseType.json,
  //   headers: {
  //     'Authorization': 'Bearer $userToken',
  //     'accept': 'application/json;charset=utf-8',
  //   },
  // );
}
