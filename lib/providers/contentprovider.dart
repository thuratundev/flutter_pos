import 'package:flutter/material.dart';

class ContentProvider with ChangeNotifier{

  Widget currentWidget = const Center(child: Text('I am Initial Page'),);


  Widget getCurrentWidget()
  {
    return currentWidget;
  }

  void setCurrentWidget(Widget newWidget)
  {
    currentWidget = newWidget;
    notifyListeners();
  }
}