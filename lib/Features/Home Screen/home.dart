import 'package:flutter/material.dart';
import 'package:mood_fix/Constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBlue,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('lib/Features/Home Screen/assets/menu.png'),
                  Image.asset('lib/Features/Home Screen/assets/search.png'),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Recommended for you',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: appWhite, fontSize: 26),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        child: Column(
                      children: [
                        Image.asset(
                            'lib/Features/Home Screen/assets/cover1.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Monsters  Go Bump',
                          style: TextStyle(color: appWhite, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Erika Recinos'.toUpperCase(),
                          style: TextStyle(
                              color: appWhite,
                              fontSize: 14,
                              fontWeight: FontWeight.w100),
                        ),
                      ],
                    )),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                        child: Column(
                      children: [
                        Image.asset(
                            'lib/Features/Home Screen/assets/cover2.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Moment Apart',
                          style: TextStyle(color: appWhite, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Odezsa'.toUpperCase(),
                          style: TextStyle(
                              color: appWhite,
                              fontSize: 14,
                              fontWeight: FontWeight.w100),
                        ),
                      ],
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
