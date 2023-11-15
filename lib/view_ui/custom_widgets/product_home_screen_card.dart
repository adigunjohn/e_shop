import 'package:eshop/view_model/providers/products_viewmodel.dart';
import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:eshop/view_ui/custom_widgets/image_widget.dart';

import 'package:provider/provider.dart';

// class ProductHomeScreenCard extends StatelessWidget {
//   const ProductHomeScreenCard({Key? key, required this.imageText})
//       : super(key: key);
//   final String imageText;
//   @override
//   Widget build(BuildContext context) {
//     return
//       Consumer<ProductsViewModel>(builder: (_,model,child){
//         return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               'Popular Choices',
//               style: TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontFamily: 'Poppins',
//                   fontSize: 15),
//             ),
//             Text(
//               'See all',
//               style: TextStyle(
//                   color: Colors.blue, fontFamily: 'Poppins', fontSize: 13),
//             ),
//           ],
//         ),
//         SizedBox(
//           height: MediaQuery.sizeOf(context).height * 0.015,
//         ), //20
//         SizedBox(
//           height: MediaQuery.sizeOf(context).height * 0.28125, //225,
//           child: ListView.builder(
//               physics: BouncingScrollPhysics(),
//               scrollDirection: Axis.horizontal,
//               itemCount: 7,
//               itemBuilder: (_, index) {
//                 return Stack(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                         child: Container(
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(18),
//                             ),
//                             child: Column(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 15.0, vertical: 5),
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       SizedBox(
//                                         height: MediaQuery.sizeOf(context).height *
//                                             0.15,
//                                         child: Padding(
//                                           padding: const EdgeInsets.symmetric(
//                                               vertical: 8.0),
//                                           child: ClipRRect(
//                                               borderRadius:
//                                               BorderRadius.circular(35),
//                                               child: Image.asset(
//                                                 imageText,
//                                               )),
//                                         ),
//                                       ),
//                                       Text(
//                                         'BEST SELLER',
//                                         style: TextStyle(
//                                             color: Colors.blue,
//                                             fontFamily: 'Poppins',
//                                             fontSize: 13),
//                                       ),
//                                       Text(
//                                         'Nike Jordan',
//                                         style: TextStyle(
//                                             color: Colors.black,
//                                             fontFamily: 'Poppins',
//                                             fontSize: 15),
//                                       ),
//                                       SizedBox( height: MediaQuery.sizeOf(context).height *
//                                           0.011,),
//                                       Text(
//                                         '\$493.00',
//                                         style: TextStyle(
//                                             color: Colors.black,
//                                             fontFamily: 'Poppins',
//                                             fontSize: 14),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             )),
//                       ),
//                       Positioned(
//                         right: 0,
//                         bottom: 0,
//                         child: Padding(
//                           // padding: const EdgeInsets.symmetric(horizontal: 1.0),
//                           padding: const EdgeInsets.only(right: 8.0),
//                           child: GestureDetector(
//                             onTap: (){
//                               log('Added to Carts');
//                             },
//                             child: Container(
//                               height: 35,
//                               width: 35,
//                               decoration: BoxDecoration(color: Colors.blue,
//                                 borderRadius: BorderRadius.only(bottomRight: Radius.circular(18),topLeft: Radius.circular(18),),),
//                               child: Icon(Icons.add, color: Colors.white,size: 20,),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         left: 7,
//                         top: 7,
//                         child: Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                             child:
//                             GestureDetector(
//                               onTap: (){
//                                 log('Added to favourites');
//                               },
//                               child: CircleAvatar(
//                                 backgroundColor: Colors.black26,
//                                 radius: 15,
//                                 child: Center(child: Icon(Icons.favorite_border_outlined, size: 19, color: Colors.white,),),
//                               ),
//                             )
//                         ),
//                       ),
//                     ]
//                 );
//               }),
//         ),
//       ],
//     );});
//   }
// }


class HomeScreenProductWidget extends StatelessWidget {
  const HomeScreenProductWidget({Key? key, required this.listview}) : super(key: key);
 final Widget? listview;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular Choices',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  fontSize: 15),
            ),
            Text(
              'See all',
              style: TextStyle(
                  color: Colors.blue, fontFamily: 'Poppins', fontSize: 13),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.015,
        ), //20
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.28125, //225,
          child: listview,
        ),
      ],
    );
  }
}

class HomeScreenProductWidget2 extends StatelessWidget {
  const HomeScreenProductWidget2({Key? key, required this.imageText, required this.nameText, required this.priceText, required this.onTap, required this.icon}) : super(key: key);
  final String imageText;
  final String nameText;
  final String priceText;
  final Icon icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          // ),
                          ImageWidget(imageText: imageText),
                          Text(
                            'BEST SELLER',
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: 'Poppins',
                                fontSize: 13),
                          ),
                          Text(
                            nameText,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontSize: 15),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox( height: MediaQuery.sizeOf(context).height *
                              0.011,),
                          Text(
                            priceText,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Padding(
              // padding: const EdgeInsets.symmetric(horizontal: 1.0),
              padding: const EdgeInsets.only(right: 8.0),
              child: GestureDetector(
                onTap: (){
                  log('Added to Carts');
                },
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(color: Colors.blue,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(18),topLeft: Radius.circular(18),),),
                  child: Icon(Icons.add, color: Colors.white,size: 20,),
                ),
              ),
            ),
          ),
          Positioned(
            left: 7,
            top: 7,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child:
                GestureDetector(
                 onTap: onTap,
                  child: CircleAvatar(
                    backgroundColor: Colors.black26,
                    radius: 15,
                    child: Center(child: icon,),
                    //Icon(Icons.favorite_border_outlined, size: 19, color: Colors.white,)
                  ),
                )
            ),
          ),
        ]
    );
  }
}
