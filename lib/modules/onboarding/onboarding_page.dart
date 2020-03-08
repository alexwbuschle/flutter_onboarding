import 'package:flutter/material.dart';
import 'package:onboarding/modules/onboarding/onboarding_controller.dart';
import 'package:onboarding/modules/onboarding/widgets/page_index_indicator.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  OnboardingController controller = OnboardingController();
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: controller.totalPages,
        onPageChanged: (value) {
          setState(() {
            controller.currentIndex = value;
          });
        },
        itemBuilder: (context, index) {
          return controller.pages[index];
        },
      ),
      bottomSheet: controller.currentIndex != controller.totalPages - 1
          ? Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    child: Text('SKIP'),
                    onTap: () {
                      pageController.animateToPage(controller.totalPages - 1,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear);
                    },
                  ),
                  Row(
                    children: <Widget>[
                      for (int i = 0; i < controller.totalPages; i++)
                        PageIndexIndicator(
                            isCurrentPage: controller.currentIndex == i)
                    ],
                  ),
                  GestureDetector(
                    child: Text('NEXT'),
                    onTap: () {
                      pageController.animateToPage(controller.currentIndex + 1,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear);
                    },
                  )
                ],
              ),
            )
          : Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 60,
              color: Colors.blue,
              child: Text(
                'GET STARTED NOW',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
    );
  }
}
