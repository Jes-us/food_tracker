import 'package:food_tracker/model/db_model/prodf_model.dart';
import 'package:food_tracker/model/db_model/db_helper.dart';
import 'package:flutter/material.dart';

class ProdfProvider extends ChangeNotifier {
  static List<Prodf> _ProdfList = [];

  List<Prodf> get ProdfList {
    if (_ProdfList.isEmpty) {
      listProdfs();
    }
    return _ProdfList;
  }

  Future<void> addProds(String upc, String brand, String image,
      String description, String tittle) async {
    Prodf prodf = Prodf(
        upc: upc,
        brand: brand,
        image: image,
        description: description,
        tittle: tittle);
    await Databasehelper.instance.insert(prodf);

    listProdfs();
  }

/*   Future<void> updateUser(Prodf prodf) async{
    await Databasehelper.instance.update(prodf);
     
    listUsers();
  }  */

  Future<void> deleteUser(int? id) async {
    await Databasehelper.instance.delete(id);

    listProdfs();
  }

  Future<void> listProdfs() async {
    _ProdfList = await Databasehelper.instance.queryAllRows();

    notifyListeners();
  }
}
