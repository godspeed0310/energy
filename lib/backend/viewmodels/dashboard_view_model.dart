import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class DashboardViewModel extends BaseViewModel {
  PageController pageController = PageController(initialPage: 1);
  int currentPage = 1;

  updatePage(int index) {
    pageController.jumpToPage(index);
    currentPage = index;
    notifyListeners();
  }
}
