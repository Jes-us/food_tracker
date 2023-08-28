import 'package:food_tracker/model/api_status.dart';
import 'package:food_tracker/model/food_fact_model.dart';
import 'package:http/http.dart' as http;
import 'package:food_tracker/constants.dart';

class ProdructService {
  String upcNumber;
  ProdructService(this.upcNumber);

  Future<Object> getProductInfor() async {
    try {
      Uri url = Uri.https(
        'world.openfoodfacts.net',
        '/api/v2/product/$upcNumber',
      );

      var response = await http.get(url);

      if (ksuccess == response.statusCode) {
        return Success(
            code: ksuccess, response: foodFactModelFromJson(response.body));
      }
      if (ksuccess != response.statusCode) {
        return Failure(
            errorCode: response.statusCode,
            errorResponse: response.reasonPhrase);
      }
    } catch (e) {
      return Failure(errorCode: kundifines, errorResponse: 'Unknown error');
    }

    return Failure(errorCode: 0, errorResponse: 'Invalid request');
  }
}
