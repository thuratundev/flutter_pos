import 'package:flutter/material.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.onClick,
  }) : super(key: key);

  final Icon leadingIcon;
  final Text title;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ListTile(
        leading: leadingIcon,
        title: title,
        onTap: ()=> onClick(),
      ),
    );
  }
}