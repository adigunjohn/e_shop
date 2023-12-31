import 'package:eshop/utils/locator.dart';
import 'package:eshop/utils/router.dart';
import 'package:eshop/view_ui/screens/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:eshop/view_ui/custom_widgets/image_widget.dart';

class LatestArrivalsProductCard extends StatelessWidget {
  const LatestArrivalsProductCard({Key? key, required this.imageText,this.ontap, required this.nameText, required this.priceText}) : super(key: key);
final String imageText;
final String nameText;
final String priceText;
final VoidCallback? ontap;
@override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width - (MediaQuery.sizeOf(context).width * 0.195),
        // height: 120,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BEST CHOICE',
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                  Text(
                    nameText,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 18),
                  ),
                  Text(
                    '\$${priceText}',
                    style: TextStyle(
                      // fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: MediaQuery.sizeOf(context).height *
                  //       0.15,
                  //   child: Padding(
                  //     padding: const EdgeInsets.symmetric(
                  //         vertical: 8.0),
                  //     child: ClipRRect(
                  //         borderRadius:
                  //         BorderRadius.circular(35),
                  //         child: Image.asset(
                  //           imageText,
                  //         )),
                  //   ),
                  // )
                  ImageWidget(imageText: imageText),
                ],
              ),
            ],
        ),
      ),
          ),
    );
  }
}
