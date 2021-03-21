import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  String _url;
  NetworkHelper(this._url);
  String get url => _url;

  Future getWeatherData() async {
    Uri uri = Uri.parse(_url);
    http.Response response = await http.get(uri);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
