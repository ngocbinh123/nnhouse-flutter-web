import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nnhouse_web/data/category.dart';
import 'package:nnhouse_web/data/request_status.dart';
import 'package:nnhouse_web/res/string.dart';
import 'package:nnhouse_web/utils/util.dart';

class HomeVM with ChangeNotifier {
  List<Category> categories = List.empty();
  RequestStatus requestStatus = RequestStatus.DOING_SLIVER;
  void getCategories() async {
    updateStatus(RequestStatus.DOING_SLIVER);
    try {
      sleep(Duration(microseconds: 200));
      categories = [
        Category(id: "asdas", name: bestPrice),
        Category(id: "asd1", name: menShoes),
        Category(id: "gfdg1", name: womenShoes),
      ];
      updateStatus(RequestStatus.DONE);
    }catch(e) {
      checkError(e);
    }
  }

  void updateStatus(RequestStatus status) {
    requestStatus = status;
  }

  void checkError(e) {
    if (Util.checkConnectionError(e)) {
      updateStatus(RequestStatus.OFFLINE);
    } else {
      updateStatus(RequestStatus.ERROR);
    }
  }
}