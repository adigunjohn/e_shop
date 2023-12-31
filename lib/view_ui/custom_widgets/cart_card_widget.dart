import 'package:flutter/material.dart';
import 'package:eshop/view_ui/custom_widgets/image_widget.dart';

class CartCardWidget extends StatelessWidget {
  const CartCardWidget({Key? key, required this.imagetext,this.pricetext, this.titletext, this.sizetext, this.ontap, this.addontap, this.numberofproduct, this.removeontap}) : super(key: key);
 final String imagetext;
 final String? titletext;
 final String? pricetext;
 final String? sizetext;
 final String? numberofproduct;
 final VoidCallback? ontap;
 final VoidCallback? addontap;
 final VoidCallback? removeontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(5),
        ),
        // height: 100,
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                ImageWidget(
                    imageText:
                    imagetext),
                SizedBox(width: 11,),
                Column(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titletext ?? 'Title of item',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 6,),
                    Text(
                      '\$${pricetext}',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 6,),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: removeontap,
                          child: CircleAvatar(
                            radius: 13,
                            backgroundColor:
                            Colors.white,
                            child: Icon(
                              Icons.remove,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                        ),
                        SizedBox(width: 12,),
                        Text(
                          numberofproduct.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(width: 12,),
                        GestureDetector(
                          onTap: addontap,
                          child: CircleAvatar(
                            radius: 13,
                            backgroundColor:
                            Colors.blue,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  sizetext ?? 'M',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: ontap,
                  child: Icon(
                    Icons.delete_outline_rounded,
                    color: Colors.grey,
                    size: 25,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
