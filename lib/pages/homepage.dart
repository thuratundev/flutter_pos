

import 'package:cafeposlite/components/navdrawer.dart';
import 'package:cafeposlite/components/settingdialog.dart';
import 'package:cafeposlite/providers/contentprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:scaffoldKey,
      appBar: AppBar(

        title: Text(widget.title),
        leading: IconButton(
          splashRadius:24,
          icon: const Icon(Icons.widgets),
          onPressed: () => scaffoldKey.currentState?.openDrawer(),
        ),
        actions: [
          IconButton(
              splashRadius: 24,
              onPressed: (){},
              icon: const Icon(Icons.filter_alt, color: Colors.white,)
          ),
          IconButton(
              splashRadius: 24,
              onPressed: ()=>showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => getSettingDialog(context)
                      ),
              icon: const Icon(Icons.settings, color: Colors.white,)
          ),
        ],
      ),
      drawer: const NavDrawer(),
      body: context.watch<ContentProvider>().getCurrentWidget(),

    );
  }
}





