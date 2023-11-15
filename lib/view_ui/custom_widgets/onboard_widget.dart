import 'package:eshop/utils/apptheme.dart';
import 'package:eshop/utils/locator.dart';
import 'package:eshop/view_model/providers/shop_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class OnboardWidget extends StatelessWidget {
  const OnboardWidget(
      {Key? key,
      this.buttonText,
      this.onPressed,
      required this.svgText,
      this.subText,
      this.headText})
      : super(key: key);
  final void Function()? onPressed;
  final String? buttonText;
  final String? svgText;
  final String? subText;
  final String? headText;
  @override
  Widget build(BuildContext context) {
    return Consumer<ShopViewModel>(
      builder: (_, model, child) {
        var currentIndex = model.onboardingCurrentIndex;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  // height: MediaQuery.sizeOf(context).height * 0.57,
                  child: SvgPicture.asset(
                    svgText.toString(),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  headText.toString(),
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  subText.toString(),
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 5,
                          width: currentIndex == 0 ? 30 : 10,
                          decoration: BoxDecoration(
                              color: currentIndex == 0
                                  ? Colors.blue
                                  // : Colors.grey.shade200,
                                  : Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Container(
                          height: 5,
                          width: currentIndex == 1 ? 30 : 10,
                          decoration: BoxDecoration(
                              color: currentIndex == 1
                                  ? Colors.blue
                                  // : Colors.grey.shade200,
                                  : Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Container(
                          height: 5,
                          width: currentIndex == 2 ? 30 : 10,
                          decoration: BoxDecoration(
                              color: currentIndex == 2
                                  ? Colors.blue
                                  // : Colors.grey.shade200,
                                  : Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      // width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: MaterialButton(
                        elevation: 0,
                        onPressed: onPressed,
                        child: Text(
                          buttonText ?? 'Skip',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
