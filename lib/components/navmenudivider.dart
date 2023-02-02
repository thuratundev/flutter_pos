import 'package:flutter/material.dart';

class NavMenuDivider extends StatelessWidget {
  const NavMenuDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Divider(thickness: 1, color: Color(0x400A5E9D),height: 1,),
    );
  }
}
