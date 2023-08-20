import 'package:food_tracker/model/api_status.dart';
import 'package:food_tracker/model/product_model.dart';
import 'package:http/http.dart' as http;
import 'package:food_tracker/constants.dart';

class ProdructService {
  String upcNumber;
  ProdructService(this.upcNumber);

  Future<Object> getProductInfor() async {
    try {
      Uri url = Uri.https(
          'api.upcitemdb.com', '/prod/trial/lookup', {'upc': '$upcNumber'});

      var response = await http.get(url);

      if (ksuccess == response.statusCode) {
        return Success(
            code: ksuccess, response: productModelFromJson(response.body));
      }
      if (ksuccess != response.statusCode) {
        return Failure(
            errorCode: response.statusCode, errorResponse: 'Invalid request');
      }
    } catch (e) {
      return Failure(errorCode: kundifines, errorResponse: 'Unknown error');
    }

    return Failure(errorCode: 0, errorResponse: 'Invalid request');
  }
}
