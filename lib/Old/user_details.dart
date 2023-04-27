import 'package:flutter/material.dart';
import 'package:flutter_web/Old/respnsive.dart';

class UserDetails extends StatefulWidget {
  const UserDetails(
      {Key? key, required this.name, required this.img, required this.subject})
      : super(key: key);

  final String name;
  final String img;
  final String subject;

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            widget.img,
                            fit: BoxFit.cover,
                            height: 15,
                            width: 15,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.name,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Text(
                            widget.subject,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white38,
                                height: 1.3),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      if (Responsive.isMobile(context))
                        const Icon(
                          Icons.archive_outlined,
                        ),
                      if (Responsive.isMobile(context))
                        const SizedBox(width: 30),
                      if (Responsive.isMobile(context))
                        const Icon(
                          Icons.delete,
                        ),
                      if (Responsive.isMobile(context))
                        const SizedBox(width: 30),
                      if (Responsive.isMobile(context))
                        const Icon(
                          Icons.email_outlined,
                        ),
                      if (Responsive.isMobile(context))
                        const SizedBox(width: 30),
                      const Icon(Icons.more_vert),
                    ],
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!Responsive.isDesktop(context) &&
                    !Responsive.isTablet(context))
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Image.network(
                      "https://static.vecteezy.com/system/resources/previews/005/883/254/original/page-not-found-404-error-concept-illustration-free-vector.jpg",
                    ),
                  ),
                const SizedBox(height: 20),
                const Text(
                  "No data",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
