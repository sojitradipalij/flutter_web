import 'package:flutter/material.dart';

class Email {
  final String? image, name, subject, body, time,profile;
  final bool?  isChecked;
  final Color? tagColor;

  Email({
    this.profile,
    this.time,
    this.isChecked,
    this.image,
    this.name,
    this.subject,
    this.body,
    this.tagColor,
  });
}

List<Email> emails = List.generate(
  demoData.length,
      (index) => Email(
    name: demoData[index]['name'],
    image: demoData[index]['image'],
    subject: demoData[index]['subject'],
    isChecked: demoData[index]['isChecked'],
    tagColor: demoData[index]['tagColor'],
    time: demoData[index]['time'],
    profile: demoData[index]['profile'],
    body: emailDemoText,
  ),
);

List demoData = [
  {
    "name": "Ebrahim Zadran",
    "image": "assets/images/user_1.png",
    "profile" : 'assets/images/pf1.png',
    "subject": "Most Valuable Cricketer of zimbabve",
    "isChecked": true,
    "tagColor": null,
    "time": "Now"
  },
  {
    "name": "Elvia Atkins",
    "image": "assets/images/user_2.png",
    "profile" : 'assets/images/pf2.png',
    "subject": "Inspiration for our new home",
    "isChecked": false,
    "tagColor": null,
    "time": "15:32"
  },
  {
    "name": "Marvin Kiehn",
    "image": "assets/images/user_3.png",
    "profile" : 'assets/images/pf3.png',
    "subject": "Business-focused empowering the world",
    "isChecked": false,
    "tagColor": null,
    "time": "14:27",
  },
  {
    "name": "Domenic Bosco",
    "image": "assets/images/user_4.png",
    "profile" : 'assets/images/pf4.png',
    "subject": "The fastest way to Design",
    "isChecked": true,
    "tagColor": const Color(0xFF23CF91),
    "time": "10:43"
  },
  {
    "name": "Elenor Bauch",
    "image": "assets/images/user_5.png",
    "profile" : 'assets/images/pf5.png',
    "subject": "New job opportunities",
    "isChecked": false,
    "tagColor": const Color(0xFF3A6FF7),
    "time": "9:58"
  }
];

String emailDemoText =
    "Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed";
