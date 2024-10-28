import 'dart:convert';

import 'package:auto_clean/helper/constant.dart';
import 'package:http/http.dart' as http;

class API {
  registerApi(
      {required String route, required Map<String, String> data}) async {
    String url = apiUrl + route;
    return await http.post(Uri.parse(url),
        body: jsonEncode(data), headers: _headers());
  }
  loginApi(
      {required String route, required Map<String, String> data}) async {
    String url = apiUrl + route;
    return await http.post(Uri.parse(url),
        body: jsonEncode(data), headers: _headers());
  }
  registerAPI(
      {required String route, required Map<String, String> data}) async {
    String url = apiUrl + route;
  return await http.post(Uri.parse(url),
        body: jsonEncode(data), headers: _headers());
  }

  _headers() =>
      {"Content-type": "application/json", "Accept": "application/json"};
}
