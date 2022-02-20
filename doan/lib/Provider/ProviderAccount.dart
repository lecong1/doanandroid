import 'package:flutter/cupertino.dart';
import 'package:doan/models/modelccount.dart';
import 'package:doan/screens/signin_page.dart';
import 'package:doan/Repository/api.dart';

class ProviderAccount extends ChangeNotifier {
  ModelAccount account = ModelAccount();
  bool loading = false;

  // getAccount(email, password) async {
  //   loading = true;
  //   account = await getAccountByEmail(email, password);
  //   loading = false;
  //   notifyListeners();
  // }

  login(email, password) async {
    loading = true;
    account = await loginApp(email, password);
    loading = false;
    notifyListeners();
  }

  register(username, password, fullname, email, phone, address) async {
    loading = true;
    account =
        await registerApp(username, password, fullname, email, phone, address);
    loading = false;
    notifyListeners();
  }

  // getInfoAccount(ModelAccount account) async {
  //   loading = true;
  //   account = await getAccountByEmail(account.email, account.password);
  //   loading = false;
  // }
}
