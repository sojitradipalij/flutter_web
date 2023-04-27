import 'package:flutter/material.dart';
import 'package:flutter_web/Old/respnsive.dart';
import 'side_menu.dart';
import 'list_of_userscreen.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print("width : ${MediaQuery.of(context).size.width}");
    return Scaffold(
      body:  Row(
        children: [
          if(Responsive.isMobile(context))
          Expanded(
            flex: size.width > 1200 ? 2 : 4,
            child:  SideMenu(),
          ),
          Expanded(
            flex: size.width > 1200 ? 3 : 5,
            child: const ListOfUser(),
          ),
          if(Responsive.isDesktop(context))
          Expanded(
            flex: size.width > 1200 ? 8 : 10,
            child: const ListOfUser(),
          ),
        ],
      )
    );
  }
}
