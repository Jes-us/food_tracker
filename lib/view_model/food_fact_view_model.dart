import 'package:flutter/material.dart';
import 'package:food_tracker/model/api_status.dart';
import 'package:food_tracker/model/food_fact_model.dart';
import 'package:food_tracker/model/food_facts_service.dart';
import 'package:food_tracker/model/user_error.dart';
import 'package:openfoodfacts/openfoodfacts.dart';

class ProductViewModel extends ChangeNotifier {
  foodFactModel _productViewModel = foodFactModel();
  UserError _userError = UserError(code: 0, message: '');
  bool _loading = false;

  String _upcNumber = '';

  get productModel => _productViewModel;

  get userError => _userError;

  get loading => _loading;

  setUpcNumber(String upcNumber) {
    _upcNumber = upcNumber;
    print('Actualiza UPC$_upcNumber');
    notifyListeners();
  }

  productViewModel() {
    getProducts();
  }

  setProductListModel(foodFactModel productListModel) {
    _productViewModel = productListModel;
    notifyListeners();
  }

  setUserError(UserError userError) {
    _userError = userError;
    notifyListeners();
  }

  setLoading(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  cleanProductViewModel() {
    _productViewModel = foodFactModel();
    notifyListeners();
  }

  getProducts() async {
    setLoading(true);
    await cleanProductViewModel();
    var response = await ProdructService(_upcNumber).getProductInfor();

    if (response is Success) {
      setProductListModel(response.response as foodFactModel);
      UserError userError = UserError(code: 0, message: '');
      setUserError(userError);
      setLoading(false);
    }
    if (response is Failure) {
      UserError userError =
          UserError(code: response.errorCode, message: response.errorResponse);
      setUserError(userError);
      setLoading(false);
    }
    // setLoading(false);
  }
}
