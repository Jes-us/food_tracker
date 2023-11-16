import 'package:flutter/material.dart';
import 'package:food_tracker/model/product_model/product_service.dart';
import 'package:food_tracker/model/api_status.dart';
import 'package:food_tracker/model/product_model/product_model.dart';
import 'package:food_tracker/model/user_error.dart';
import 'package:food_tracker/view_model/prodf_view_model.dart';

class ProductViewModel extends ChangeNotifier {
  ProductModel _productModel =
      ProductModel(code: '', total: 0, offset: 0, items: []);
  UserError _userError = UserError(code: 0, message: '');
  ProdfProvider productsDB = ProdfProvider();
  bool _loading = false;
  bool _showcard = false;
  bool _showalert = false;
  String _upcNumber = '';
  List<Map<String, dynamic>> _dbProduct = [];
  dynamic dbString;
  int _deletionId = 0;
  int _delIndex = 0;

  ProductViewModel() {
    getDataBaseProducts();
  }

  get productModel => _productModel;

  get userError => _userError;

  get loading => _loading;

  get showcard => _showcard;

  get showalert => _showalert;

  get prodList => _dbProduct;

  get delIndex => _delIndex;

  getToJson() {
    return productModelToJson(productModel);
  }

  setUpcNumber(String upcNumber) {
    _upcNumber = upcNumber;
    notifyListeners();
  }

  Future<void> getDataBaseProducts() async {
    _dbProduct = [];
    dynamic dbStrings = await productsDB.prodfList;

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

      _dbProduct.add(registro);
    });

    notifyListeners();
  }

  String getDateDiff(DateTime expirationDate) {
    Duration difference;
    int daysToExpire;
    String labelVigencia = '';

    difference = expirationDate.difference(DateTime.now());
    daysToExpire = difference.inDays;

    if (daysToExpire <= 0) {
      labelVigencia = 'Expired';
    } else {
      labelVigencia = 'Exp $daysToExpire days';
    }

    return labelVigencia;
  }

  storeProduct(String expirationDate) async {
    try {
      await productsDB.addProds(
          '', '', '', '', '', getToJson(), expirationDate);
      getDataBaseProducts();
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

  deleteDbProduct(int id, int index) async {
    _showalert = true;
    _deletionId = id;
    _delIndex = index;
    notifyListeners();
  }

  confirmDeletionDbProduct() async {
    await productsDB.deleteProds(_deletionId);
    _deletionId = 0;
    _showalert = false;
    getDataBaseProducts();
    notifyListeners();
  }

  cancelDeletionDbProduct() async {
    _deletionId = 0;
    _showalert = false;
    notifyListeners();
  }

  productViewModel() {
    getProducts();
    notifyListeners();
  }

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
      notifyListeners();
    }
    if (response is Failure) {
      UserError userError =
          UserError(code: response.errorCode, message: response.errorResponse);
      setUserError(userError);
      setLoading(false);
      notifyListeners();
    }
  }
}
