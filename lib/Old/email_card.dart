import 'package:flutter/material.dart';

import 'modal.dart';

class EmailCard extends StatelessWidget {
  const EmailCard({Key? key, this.isActive = false, this.email, this.press})
      : super(key: key);

  final bool isActive;
  final Email? email;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20 / 2),
      child: InkWell(
        onTap: press,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color:
                  isActive ? const Color(0xFF366CF6) : const Color(0xFFEBEDFA),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          email!.profile.toString(),
                          fit: BoxFit.cover,
                          height: 50,
                          width: 50,
                        )),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: "${email!.name} \n",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: isActive
                              ? Colors.white
                              // : const Color(0xFF4D5875),
                              : Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "${email!.subject}",
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: isActive
                                          ? Colors.white
                                          : const Color(0xFF4D5875),
                                    ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Text(
                    email!.time!,
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: isActive ? Colors.white70 : null),
                  )
                ],
              ),
              const SizedBox(height: 20 / 2),
              Text(
                "${email!.body}",
                style: Theme.of(context).textTheme.caption!.copyWith(
                    height: 1.5, color: isActive ? Colors.white70 : null),
              )
            ],
          ),
        ),
      ),
    );
  }
}
