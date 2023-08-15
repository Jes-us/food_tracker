import 'package:flutter/material.dart';
import 'package:food_tracker/model/product_service.dart';
import 'package:food_tracker/model/api_status.dart';
import 'package:food_tracker/model/product_model.dart';
import 'package:food_tracker/constants.dart';

class ProductViewModel extends ChangeNotifier {
  ProductModel _productViewModel =
      ProductModel(code: '0', total: 0, offset: 0, items: []);
  String _upcNumber = '';

  get productModel => _productViewModel;

  setUpcNumber(String upcNumber) {
    _upcNumber = upcNumber;
    print('Actualiza UPC$_upcNumber');
    notifyListeners();
  }

  productViewModel() {
    getProducts();
  }

  setProductListModel(ProductModel productListModel) {
    _productViewModel = productListModel;
    notifyListeners();
  }

  getProducts() async {
    var response = await prodructService(_upcNumber).getProductInfor();

    if (response is Success) {
      var response2 = response.response;
      setProductListModel(response.response as ProductModel);
    }
    if (response is Failure) {
      //TODO  agregar el manejo de errores
    }
  }
}
