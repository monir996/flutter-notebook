import 'package:flutter/material.dart';
import 'package:flutter_notebook/data_utils/data_utils.dart';
import 'package:flutter_notebook/model/user_model.dart';

class UserProvider extends ChangeNotifier{

  late List<UserModel> _userList = [];

  List<UserModel> get allUserList => _userList;

  bool isLoading = false;

  void fetchPost() async{

    isLoading = true;
    try{

      DataUtils dataUtils = DataUtils();
      _userList = await dataUtils.getData();
      isLoading = false;

    } catch(e){
      isLoading = false;
    }

    notifyListeners();
  }
}