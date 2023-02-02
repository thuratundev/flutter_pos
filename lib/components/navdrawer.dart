
import 'package:cafeposlite/pages/tableviewpage.dart';
import 'package:cafeposlite/providers/contentprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'navpackages.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2,
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
          DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blueAccent[100]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  const [
                  Icon(Icons.flutter_dash, size: 96,color:Color(0x8C001840)),
                  SizedBox(height: 10,),
                  Text("Cafe'Pos Lite",style: TextStyle(color: Color(0xBF001840), fontSize: 20,fontWeight: FontWeight.w500),)
                ],
              )
          ),
          NavMenu(
            key: key,
            leadingIcon: const Icon(Icons.restaurant_menu,size: 32,color: Color(0xFF0A5E9D),) ,
            title:  const Text('Menu', style:  TextStyle(color: Color(0xFF0A5E9D),fontSize: 18 , fontWeight: FontWeight.w600),),
            onClick: ()=>{
              Navigator.pop(context),
              context.read<ContentProvider>().setCurrentWidget(const ResMenuItem())
            },

          ),
          const NavMenuDivider(),
          NavMenu(
            key: key,
            leadingIcon: const Icon(Icons.table_bar,size:32,color: Color(0xFF0A5E9D),) ,
            title:  const Text('Table View', style:  TextStyle(color: Color(0xFF0A5E9D),fontSize: 18, fontWeight: FontWeight.w600),),
            onClick: ()=>{
              Navigator.pop(context),
              context.read<ContentProvider>().setCurrentWidget(const ResTableView())
            },
          ),
          const NavMenuDivider(),
        ],
      ),
    );
  }
}
