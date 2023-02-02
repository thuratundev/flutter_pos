import 'package:flutter/material.dart';

Widget getSettingDialog(BuildContext context)
{
  return AlertDialog(

    title: const Center(child: Text('System Settings')),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        ListTile(leading: Icon(Icons.print),title: Text('Printer Setting'),dense: true, ),

        ListTile(leading: Icon(Icons.account_circle),title: Text('User Setting'),dense: true,),

        ListTile(leading: Icon(Icons.computer),title: Text('Server Setting'),dense: true,)
      ],
    ),
    actions: <Widget>[
      TextButton(
        onPressed: () => Navigator.pop(context, 'Cancel'),
        child: const Text('Cancel'),
      ),
    ],
  );
}