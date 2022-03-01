import 'package:flutter/material.dart';
import 'package:ibs_platform/onboardingpage/contain.dart';
import 'package:ibs_platform/theme/style.dart';
import 'contain.dart';

class Onboardingpage extends StatefulWidget {
  Onboardingpage({Key? key}) : super(key: key);

  @override
  State<Onboardingpage> createState() => _OnboardingpageState();
}

class _OnboardingpageState extends State<Onboardingpage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: contents.length,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (context, index) => Stack(
          children: [
            Image(
              image: AssetImage(
                contents[index].image,
              ),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(top: 540),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.black87),
              height: 360,
              width: double.infinity,
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Expanded(
                        child: Text(
                          contents[index].discription,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Style.colors.primary,
                              fontWeight: FontWeight.w500,
                              fontSize: 24),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(contents[index].discription2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Style.colors.primary,
                            fontWeight: FontWeight.w500,
                            fontSize: 24)),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          contents.length,
                          (index) => buildDot(index, context),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: currentIndex == index ? 30 : 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Style.colors.primary),
    );
  }
}
