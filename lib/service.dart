import 'package:dio/dio.dart';

final dio = Dio();

void fetchData() async{
  final response = await dio.get('https://api.restful-api.dev/objects');
  print(response);
  print(response.data);
}