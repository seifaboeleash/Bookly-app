import 'package:dio/dio.dart';

class ApiServices {
  final _baseUrl = 'https://www.googleapis.com/books/v1' ;
  final Dio dio  = Dio();


  Future <Map<String,dynamic>> get ({required String endPoint}) async{
    final response = await dio.get('$_baseUrl$endPoint');
    print('Response Code : ${response.statusCode}');
    return response.data;
  }
}