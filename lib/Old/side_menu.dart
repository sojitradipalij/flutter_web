// ignore_for_file: deprecated_member_use

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/Old/respnsive.dart';

class SideMenu extends StatefulWidget {
  SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  bool isTap = true;
  bool isTap1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.only(top: kIsWeb ? 20 : 0),
        // color: Colors.blueGrey.shade100,
        color: Colors.black26,
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553__340.png",
                    fit: BoxFit.cover,
                    height: 75,
                    width: 75,
                  ),
                  // if (!Responsive.isDesktop(context)) const CloseButton()
                ],
              ),
              const SizedBox(height: 5),
              const Center(
                child: Text(
                  "Harshad Mer",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      height: 1.5,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Center(
                child: Text(
                  "harshad0916@gmail.com",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black38,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(height: 20),
              FlatButton.icon(
                minWidth: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  isTap = true;
                  isTap1 = false;
                  setState(() {});
                },
                color: isTap == true
                    ? const Color(0xFF366CF6)
                    : const Color(0xFFEBEDFA),
                icon: Icon(
                  Icons.edit,
                  size: 15,
                  color: isTap == true ? Colors.white : Colors.black,
                ),
                label: Text(
                  "New Message",
                  style: TextStyle(
                      color: isTap == true ? Colors.white : Colors.black),
                ),
              ),
              const SizedBox(height: 20),
              FlatButton.icon(
                minWidth: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: isTap1 == true ? Color(0xFF366CF6) : Color(0xFFEBEDFA),
                onPressed: () {
                  isTap = false;
                  isTap1 = true;
                  setState(() {});
                },
                icon: Icon(Icons.file_download_outlined,
                    size: 15,
                    color: isTap1 == true ? Colors.white : Colors.black),
                label: Text(
                  "Get Message",
                  style: TextStyle(
                      color: isTap1 == true ? Colors.white : Colors.black),
                ),
              ),
              const Divider(thickness: 2, color: Colors.black),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  commnonButton(icon: Icons.file_copy, title: 'My Files'),
                  commnonButton(icon: Icons.group, title: 'Shared With me'),
                  commnonButton(icon: Icons.star, title: 'Starred'),
                  commnonButton(
                      icon: Icons.watch_later_outlined, title: 'Recent'),
                  commnonButton(
                      icon: Icons.offline_pin_sharp, title: 'Offline'),
                  commnonButton(icon: Icons.upload, title: 'Uploads'),
                  commnonButton(icon: Icons.backup_sharp, title: 'Backups'),
                  commnonButton(icon: Icons.delete, title: 'Trash'),
                  const Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                  commnonButton(
                      icon: Icons.settings, title: 'Setting & account'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget commnonButton({required IconData icon, required String title}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: FlatButton.icon(
        onPressed: () {},
        minWidth: double.infinity,
        color: Color(0xFFEBEDFA),
        padding: EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        icon: Icon(
          icon, size: 20,
          // color: Colors.black,
        ),
        label: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
