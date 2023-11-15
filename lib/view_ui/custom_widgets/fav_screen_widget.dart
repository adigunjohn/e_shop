import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:eshop/view_ui/custom_widgets/image_widget.dart';

class FavScreenProductCard extends StatelessWidget {
  const FavScreenProductCard({Key? key, required this.onTap, required this.imageText, required this.priceText, required this.nameText}) : super(key: key);
  final void Function()? onTap;
  final String imageText;
  final String nameText;
  final String priceText;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.only(
                  bottom: 12.0,
                  top: 4.0,
                  left: 12.0,
                  right: 12.0),
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.spaceAround,
                children: [
                  ImageWidget(imageText: imageText),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'BEST SELLER',
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                      GestureDetector(
                        onTap: () {
                          log('Add to cart');
                        },
                        child: CircleAvatar(
                          backgroundColor:
                          Colors.blue,
                          radius: 13,
                          child: Center(
                            child: Icon(
                              Icons
                                  .add_shopping_cart_rounded,
                              size: 15.5,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.start,
                    children: [
                      Text(
                        nameText,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 15),
                        overflow:
                        TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context)
                        .height *
                        0.011,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                    children: [
                      Text(
                        priceText,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 14),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                              radius: 9,
                              backgroundColor:
                              Colors.yellow),
                          SizedBox(
                            width: 6,
                          ),
                          CircleAvatar(
                              radius: 9,
                              backgroundColor:
                              Colors.green),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )),
        Positioned(
          left: 15,
          top: 15,
          child: GestureDetector(
            onTap: onTap,
            child: CircleAvatar(
              backgroundColor: Colors.black26,
              radius: 18,
              child: Center(
                child: Icon(
                  // Icons.favorite_border_outlined,
                  Icons.favorite_outlined,
                  size: 21,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
