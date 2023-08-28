import 'package:flutter/material.dart';
import 'package:food_tracker/model/product_service.dart';
import 'package:food_tracker/model/api_status.dart';
import 'package:food_tracker/model/product_model.dart';
import 'package:food_tracker/model/user_error.dart';
import 'package:food_tracker/constants.dart';

class ProductViewModel extends ChangeNotifier {
  ProductModel _productViewModel =
      ProductModel(code: '', total: 0, offset: 0, items: []);
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

  setProductListModel(ProductModel productListModel) {
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
    _productViewModel = ProductModel(code: '', total: 0, offset: 0, items: []);
    notifyListeners();
  }

  getProducts() async {
    setLoading(true);
    await cleanProductViewModel();
    var response = await ProdructService(_upcNumber).getProductInfor();

    if (response is Success) {
      setProductListModel(response.response as ProductModel);
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
