import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/Old/email_card.dart';
import 'package:flutter_web/Old/respnsive.dart';
import 'package:flutter_web/Old/user_details.dart';
import 'side_menu.dart';
import 'modal.dart';

class ListOfUser extends StatefulWidget {
  const ListOfUser({Key? key}) : super(key: key);

  @override
  State<ListOfUser> createState() => _ListOfUserState();
}

class _ListOfUserState extends State<ListOfUser> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 250),
        child: SideMenu(),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: kIsWeb ? 20 : 0),
        // color: Colors.blueGrey.shade100,
        color: Colors.black26,
        child: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: [
                    if (!Responsive.isMobile(context))
                      IconButton(
                        icon: const Icon(
                          Icons.menu,
                          size: 30,
                        ),
                        onPressed: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                      ),
                    if (Responsive.isDesktop(context)) const SizedBox(width: 5),
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          fillColor: Colors.grey,
                          filled: true,
                          suffixIcon: const Padding(
                            padding: EdgeInsets.all(20 * 0.75),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                          hintText: "Search",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      size: 20,
                    ),
                    const SizedBox(width: 5),
                    const Text("Sort by time"),
                    const Spacer(),
                    MaterialButton(
                      child: const Icon(
                        Icons.sort,
                        size: 23,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: emails.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => EmailCard(
                    email: emails[index],
                    isActive: Responsive.isMobile(context)
                        ? false
                        : index == emails[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserDetails(
                            name: emails[index].name!,
                            img: emails[index].profile!,
                            subject: emails[index].subject!,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
