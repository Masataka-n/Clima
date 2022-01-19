import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}

// print(temperature);
// print(condition);
// print(cityName);
