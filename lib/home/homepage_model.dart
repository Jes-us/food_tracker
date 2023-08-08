import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:food_tracker/home/homepage_model.dart';

class HomePageModel {
  String upcNumber;
  HomePageModel(this.upcNumber);

  Future<void> getProductInfor() async {
    Uri url = Uri.https(
        'api.upcitemdb.com', '/prod/trial/lookup', {'upc': '$upcNumber'});

    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jasonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      var itemCount = jasonResponse['totalItems'];
      print('Total items $itemCount');
    } else {
      print('error en al llamada del servicio $response.statusCode');
    }
  }
}
