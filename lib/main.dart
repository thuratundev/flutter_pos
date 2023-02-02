import 'package:cafeposlite/pages/app.dart';
import 'package:cafeposlite/providers/contentprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
     MultiProvider(providers:
     [
        ChangeNotifierProvider(create: (_) => ContentProvider()),

     ],
     child: const App(),

     ),
  );

}
