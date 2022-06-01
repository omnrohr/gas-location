import 'package:flutter/material.dart';
import 'package:gas_project/componenets/rounded_button.dart';
import 'package:gas_project/constants.dart';
import 'package:gas_project/size_config.dart';
import '../../../strings_save.dart';
import './splash_content.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                controller: _pageController,
                itemCount: splashData.length,
                itemBuilder: (ctx, i) => SplashContent(
                  title: splashData[i]['title'] as String,
                  subTitle: splashData[i]['subTitle'] as String,
                  image: splashData[i]['image'] as String,
                ),
              )),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const Spacer(
                  flex: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      splashData.length,
                      (i) => buildDot(i),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
                RoundedButton(
                    border: 20,
                    fontsSize: 18,
                    height: getProportionateScreenHeight(56),
                    text: currentPage == splashData.length - 1
                        ? 'Lets Go'
                        : 'Continue',
                    press: () {
                      _pageController.nextPage(
                          duration: kAnimationDuration, curve: Curves.easeIn);
                    }),
                // Container(
                //   width: double.infinity,
                //   color: oPrimaryColor,
                //   child: TextButton(
                //       onPressed: () {
                //         _pageController.nextPage(
                //             duration: kAnimationDuration, curve: Curves.easeIn);
                //       },
                //       child: Text(
                //         currentPage == splashData.length - 1
                //             ? 'Lets Go'
                //             : 'Continue',
                //         style: TextStyle(
                //             fontSize: getProportionateScreenWidth(18),
                //             color: Colors.white,
                //             fontWeight: FontWeight.bold),
                //       )),
                // ),
                const Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      width: currentPage == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: currentPage == index
            ? oPrimaryColor
            : oPrimaryColor.withOpacity(.5),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
