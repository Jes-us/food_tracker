import 'package:flutter/material.dart';
import 'package:food_tracker/model/db_model/prodf_model.dart';
import 'package:food_tracker/model/product_model/product_service.dart';
import 'package:food_tracker/model/api_status.dart';
import 'package:food_tracker/model/product_model/product_model.dart';
import 'package:food_tracker/model/user_error.dart';
import 'package:food_tracker/view_model/prodf_view_model.dart';

class ProductViewModel extends ChangeNotifier {
  ProductModel _productModel =
      ProductModel(code: '', total: 0, offset: 0, items: []);
  UserError _userError = UserError(code: 0, message: '');

  bool _loading = false;
  bool _showcard = false;

  String _upcNumber = '';

  get productModel => _productModel;

  get userError => _userError;

  get loading => _loading;

  get showcard => _showcard;

  get prodList => getDataBaseProducts();

  getToJson() {
    return productModelToJson(productModel);
  }

  setUpcNumber(String upcNumber) {
    _upcNumber = upcNumber;
    notifyListeners();
  }

  getDataBaseProducts() {
    List<Prodf> dbStrings = ProdfProvider().prodfList;
    List<Map<String, dynamic>> dbProduct = [];

    dbStrings.forEach((element) {
      ProductModel product;
      int index = dbStrings.indexOf(element);
      String daysToExpire;

      product = productModelFromJson(dbStrings[index].productmodel);
      daysToExpire =
          getDateDiff(DateTime.parse(element.expirationdate)).toString();

      Map<String, dynamic> registro = {
        'id': element.id,
        'product': product,
        'expirationdate': element.expirationdate,
        'daystoexpire': daysToExpire
      };

      dbProduct.add(registro);
    });

    return dbProduct;
  }

  String getDateDiff(DateTime expirationDate) {
    Duration difference;
    int daysToExpire;
    String labelVigencia = '';

    difference = expirationDate.difference(DateTime.now());
    daysToExpire = difference.inDays;

    if (daysToExpire <= 0) {
      labelVigencia = 'Expirado';
    } else {
      labelVigencia = 'Exp $daysToExpire Dias';
    }

    return labelVigencia;
  }

  storeProduct(String expirationDate) async {
    try {
      await ProdfProvider()
          .addProds('', '', '', '', '', getToJson(), expirationDate);
      setShowCard(false);
      notifyListeners();
    } catch (e) {
      print(e);
      //TODO definir manejo de errores
    }
  }

  cancelProdcutStorage() {
    setShowCard(false);
    notifyListeners();
  }

  deleteDbProduct(int id) async {
    await ProdfProvider().deleteUser(id);
    notifyListeners();
  }

  productViewModel() {
    getProducts();
  }

  /*  transformDBData() {
    _productModel.toJson();
  } */

  setProductListModel(ProductModel productListModel) {
    _productModel = productListModel;
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

  setShowCard(bool showcard) {
    _showcard = showcard;
    notifyListeners();
  }

  cleanProductViewModel() {
    _productModel = ProductModel(code: '', total: 0, offset: 0, items: []);
    notifyListeners();
  }

  getProducts() async {
    setLoading(true);
    await cleanProductViewModel();
    var response = await ProdructService(_upcNumber).getProductInfor();

    if (response is Success) {
      setShowCard(true);
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
