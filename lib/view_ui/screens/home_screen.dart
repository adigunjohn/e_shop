import 'package:eshop/model/services/navigation_service.dart';
import 'package:eshop/view_model/providers/products_viewmodel.dart';
import 'package:eshop/view_ui/screens/notification_screen.dart';
import 'package:eshop/view_ui/screens/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:eshop/utils/locator.dart';
import 'package:eshop/utils/router.dart';
import 'package:eshop/view_ui/screens/profile_screen.dart';
import 'package:eshop/view_ui/custom_widgets/product_home_screen_card.dart';
import 'package:eshop/view_ui/custom_widgets/latest_arrival_productcard.dart';
import 'package:provider/provider.dart';
import 'dart:developer';

// class HomeScreen extends StatefulWidget {
//   HomeScreen({Key? key}) : super(key: key);
//   static const String id = 'HomeScreen';
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Future.delayed(const Duration(seconds: 2), () {
//       Provider.of<ProductsViewModel>(context, listen: false).getRanndomshoes();
//       Provider.of<ProductsViewModel>(context, listen: false)
//           .generateRandomAll();
//       Provider.of<ProductsViewModel>(context, listen: false)
//           .generateRandomBags();
//       Provider.of<ProductsViewModel>(context, listen: false)
//           .generateRandomClothes();
//       Provider.of<ProductsViewModel>(context, listen: false)
//           .generateRandomHats();
//       Provider.of<ProductsViewModel>(context, listen: false)
//           .generateRandomWatches();
//       setState(() {
//         doneLoading = true;
//       });
//     });
//
//     // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//     //   Provider.of<ProductsViewModel>(context, listen: false).getRanndomshoes();
//     //     setState(() {
//     //       doneLoading = true;
//     //     });
//     // });
//   }
//
//   bool doneLoading = false;
//   @override
//   Widget build(BuildContext context) {
//     print('HmScrn');
//     return DefaultTabController(
//       length: 5,
//       child: Consumer<ProductsViewModel>(builder: (_, model, child) {
//         // model.getRanndomshoes();
//         return Scaffold(
//           body: SafeArea(
//               child: SizedBox(
//             height: MediaQuery.sizeOf(context).height,
//             child: Padding(
//               padding: const EdgeInsets.only(
//                   top: 15.0, bottom: 10.0, right: 15.0, left: 15.0),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Builder(
//                         builder: (context) {
//                           return GestureDetector(
//                             onTap: () {
//                               locator<AppRouter>()
//                                   .router
//                                   .push('/${ProfileScreen.id}');
//                             },
//                             child: CircleAvatar(
//                               radius: 23,
//                               backgroundColor: Colors.white,
//                               child: Icon(
//                                 Icons.person_outline_rounded,
//                                 color: Colors.black,
//                                 size: 25,
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                       Column(
//                         children: [
//                           Text(
//                             'Store location',
//                             style: TextStyle(
//                                 fontFamily: 'Poppins',
//                                 color: Colors.grey,
//                                 fontSize: 12.2),
//                           ),
//                           SizedBox(
//                             height: 1,
//                           ),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.location_on_rounded,
//                                 color: Colors.red,
//                                 size: 15,
//                               ),
//                               SizedBox(
//                                 width: 2,
//                               ),
//                               Text(
//                                 'FUTA Southgate, Akure',
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.w500,
//                                     fontFamily: 'Poppins',
//                                     fontSize: 13.5),
//                               )
//                             ],
//                           )
//                         ],
//                       ),
//                       GestureDetector(
//                         onTap: () {},
//                         child: CircleAvatar(
//                           radius: 23,
//                           backgroundColor: Colors.white,
//                           child: Icon(
//                             Icons.notifications_none_outlined,
//                             color: Colors.black,
//                             size: 25,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: MediaQuery.sizeOf(context).height * 0.03,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(23)),
//                     width: MediaQuery.sizeOf(context).width,
//                     height: MediaQuery.sizeOf(context).height * 0.06,
//                     child: Padding(
//                       // padding: const EdgeInsets.only(left: 18.0),
//                       padding: EdgeInsets.only(
//                           left: MediaQuery.sizeOf(context).width * 0.05),
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.search_rounded,
//                             size: 18,
//                             color: Colors.grey,
//                           ),
//                           SizedBox(
//                             width: MediaQuery.sizeOf(context).width * 0.035,
//                           ),
//                           Text(
//                             'Wanna explore our store?',
//                             style: TextStyle(
//                                 color: Colors.grey,
//                                 fontFamily: 'Poppins',
//                                 fontSize: 13.5),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: MediaQuery.sizeOf(context).height * 0.03,
//                   ),
//                   Container(
//                     child: Column(
//                       children: [
//                         Container(
//                           height:
//                               MediaQuery.sizeOf(context).height * 0.0625, //50
//                           width: double.maxFinite,
//                           child: TabBar(
//                               isScrollable: true,
//                               physics: BouncingScrollPhysics(),
//                               padding: EdgeInsets.all(5),
//                               labelColor: Colors.white,
//                               labelStyle: TextStyle(
//                                 fontSize: 12.85,
//                                 fontFamily: 'Poppins',
//                               ),
//                               // unselectedLabelStyle: TextStyle(fontSize: 12.85, fontFamily: 'Poppins', fontStyle: FontStyle.italic),
//                               unselectedLabelColor: Colors.grey,
//                               labelPadding: EdgeInsets.only(
//                                   left: 15.0,
//                                   right: 15.0,
//                                   top: 1.0,
//                                   bottom: 1.0),
//                               // indicatorColor: Colors.red,
//                               // indicatorSize: TabBarIndicatorSize.label,
//                               // indicatorWeight: 3.0,
//                               // indicator:  BoxDecoration(),
//                               indicator: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(18),
//                                 color: Colors.blue,
//                               ),
//                               // indicatorPadding: EdgeInsets.all(5.0),
//                               tabs: [
//                                 Tab(
//                                   text: 'Watches',
//                                 ),
//                                 Tab(
//                                   text: 'Clothes',
//                                 ),
//                                 Tab(
//                                   text: 'Hats',
//                                 ),
//                                 Tab(
//                                   text: 'Bags',
//                                 ),
//                                 Tab(
//                                   text: 'Shoes',
//                                 ),
//                               ]),
//                         ),
//                         SizedBox(
//                           height: MediaQuery.sizeOf(context).height * 0.009,
//                         ),
//                         Container(
//                           height:
//                               MediaQuery.sizeOf(context).height * 0.335, //268,
//                           // width: MediaQuery.sizeOf(context).width,
//                           child: TabBarView(
//                               physics: BouncingScrollPhysics(),
//                               children: [
//                                 doneLoading == false
//                                     ? SizedBox(
//                                         height: 30,
//                                         width: 30,
//                                         child: Center(
//                                           child: CircularProgressIndicator(
//                                             color: Colors.blue,
//                                           ),
//                                         ),
//                                       )
//                                     : HomeScreenProductWidget(
//                                         listview: ListView.builder(
//                                             // physics: BouncingScrollPhysics(),
//                                             scrollDirection: Axis.horizontal,
//                                             itemCount:
//                                                 model.randomWatches.length,
//                                             itemBuilder: (_, index) {
//                                               var watch =
//                                                   model.randomWatches[index];
//                                               return HomeScreenProductWidget2(
//                                                 icon: model.favourites.contains(watch) ? Icon(
//                                                   // Icons.favorite_border_outlined,
//                                                   Icons.favorite_outlined,
//                                                   size: 19,
//                                                   color: Colors.blue,
//                                                 ) : Icon(Icons.favorite_border_outlined, size: 19, color: Colors.white,),
//                                                   onTap: (){
//                                                     model.addToFavouritesFromRandom(index, model.randomWatches);
//                                                  // model.checkFav(index, model.randomWatches);
//                                                  //    if(model.favourites.contains(watch)){
//                                                  //      model.removeItemsFromFavourites(index);
//                                                  //    }
//                                                  //    else{model.addToFavouritesFromRandom(index, model.randomWatches);}
//                                                   },
//                                                 nameText: watch[1],
//                                                   priceText: watch[2],
//                                                   imageText: watch[3]);
//                                             }),
//                                       ),
//                                 doneLoading == false
//                                     ? SizedBox(
//                                         height: 30,
//                                         width: 30,
//                                         child: Center(
//                                           child: CircularProgressIndicator(
//                                             color: Colors.blue,
//                                           ),
//                                         ),
//                                       )
//                                     : HomeScreenProductWidget(
//                                         listview: ListView.builder(
//                                             // physics: BouncingScrollPhysics(),
//                                             scrollDirection: Axis.horizontal,
//                                             itemCount:
//                                                 model.randomClothes.length,
//                                             itemBuilder: (_, index) {
//                                               var cloth =
//                                                   model.randomClothes[index];
//                                               return HomeScreenProductWidget2(
//                                                   icon: model.favourites.contains(cloth) ? Icon(
//                                                     // Icons.favorite_border_outlined,
//                                                     Icons.favorite_outlined,
//                                                     size: 19,
//                                                     color: Colors.blue,
//                                                   ) : Icon(Icons.favorite_border_outlined, size: 19, color: Colors.white,),
//                                                   onTap: (){
//                                                     model.addToFavouritesFromRandom(index, model.randomClothes);
//                                                   },
//                                                 nameText: cloth[1],
//                                                   priceText: cloth[2],
//                                                   imageText: cloth[3]);
//                                             }),
//                                       ),
//                                 doneLoading == false
//                                     ? SizedBox(
//                                         height: 30,
//                                         width: 30,
//                                         child: Center(
//                                           child: CircularProgressIndicator(
//                                             color: Colors.blue,
//                                           ),
//                                         ),
//                                       )
//                                     : HomeScreenProductWidget(
//                                         listview: ListView.builder(
//                                             // physics: BouncingScrollPhysics(),
//                                             scrollDirection: Axis.horizontal,
//                                             itemCount: model.randomHats.length,
//                                             itemBuilder: (_, index) {
//                                               var hat =
//                                                   model.randomHats[index];
//                                               return HomeScreenProductWidget2(
//                                                   icon: model.favourites.contains(hat) ? Icon(
//                                                     // Icons.favorite_border_outlined,
//                                                     Icons.favorite_outlined,
//                                                     size: 19,
//                                                     color: Colors.blue,
//                                                   ) : Icon(Icons.favorite_border_outlined, size: 19, color: Colors.white,),
//                                                   onTap: (){
//                                                     model.addToFavouritesFromRandom(index, model.randomHats);
//                                                   },
//                                                 nameText: hat[1],
//                                                   priceText: hat[2],
//                                                   imageText: hat[3]);
//                                             }),
//                                       ),
//                                 doneLoading == false
//                                     ? SizedBox(
//                                         height: 30,
//                                         width: 30,
//                                         child: Center(
//                                           child: CircularProgressIndicator(
//                                             color: Colors.blue,
//                                           ),
//                                         ),
//                                       )
//                                     : HomeScreenProductWidget(
//                                         listview: ListView.builder(
//                                             // physics: BouncingScrollPhysics(),
//                                             scrollDirection: Axis.horizontal,
//                                             itemCount: model.randomBags.length,
//                                             itemBuilder: (_, index) {
//                                               var bag =
//                                                   model.randomBags[index];
//                                               return HomeScreenProductWidget2(
//                                                 icon: model.favourites.contains(bag) ? Icon(
//                                                   // Icons.favorite_border_outlined,
//                                                   Icons.favorite_outlined,
//                                                   size: 19,
//                                                   color: Colors.blue,
//                                                 ) : Icon(Icons.favorite_border_outlined, size: 19, color: Colors.white,),
//                                                 onTap: (){
//                                                   model.addToFavouritesFromRandom(index, model.randomBags);
//                                                 },
//                                                 nameText: bag[1],
//                                                   priceText: bag[2],
//                                                   imageText: bag[3],);
//                                             }),
//                                       ),
//                                 doneLoading == false
//                                     ? SizedBox(
//                                         height: 30,
//                                         width: 30,
//                                         child: Center(
//                                           child: CircularProgressIndicator(
//                                             color: Colors.blue,
//                                           ),
//                                         ),
//                                       )
//                                     : HomeScreenProductWidget(
//                                         listview: ListView.builder(
//                                             // physics: BouncingScrollPhysics(),
//                                             scrollDirection: Axis.horizontal,
//                                             itemCount: model.randomShoes.length,
//                                             itemBuilder: (_, index) {
//                                               var shoe =
//                                                   model.randomShoes[index];
//                                               return HomeScreenProductWidget2(
//                                                   icon: model.favourites.contains(shoe) ? Icon(
//                                                     // Icons.favorite_border_outlined,
//                                                     Icons.favorite_outlined,
//                                                     size: 19,
//                                                     color: Colors.blue,
//                                                   ) : Icon(Icons.favorite_border_outlined, size: 19, color: Colors.white,),
//                                                   onTap: (){
//                                                     model.addToFavouritesFromRandom(index, model.randomShoes);
//                                                   },
//                                                 nameText: shoe[1],
//                                                   priceText: shoe[2],
//                                                   imageText: shoe[3]);
//                                             }),
//                                       ),
//                               ]),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: MediaQuery.sizeOf(context).height * 0.03,
//                   ),
//                   Expanded(
//                     child: Container(
//                       child: Column(
//                         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 'Latest Arrivals',
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.w500,
//                                     fontFamily: 'Poppins',
//                                     fontSize: 15),
//                               ),
//                               Text(
//                                 'See all',
//                                 style: TextStyle(
//                                     color: Colors.blue,
//                                     fontFamily: 'Poppins',
//                                     fontSize: 13),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: MediaQuery.sizeOf(context).height * 0.025,
//                           ), //20
//                           doneLoading == false
//                               ? CircularProgressIndicator(
//                                   color: Colors.blue,
//                                 )
//                               : SizedBox(
//                                   height: MediaQuery.sizeOf(context).height *
//                                       0.15, //120,
//                                   child: ListView.builder(
//                                       itemCount: model.randomAll.length,
//                                       scrollDirection: Axis.horizontal,
//                                       itemBuilder: (_, index) {
//                                         var all = model.randomAll[index];
//                                         return LatestArrivalsProductCard(
//                                           nameText: all[1],
//                                           priceText: all[2],
//                                           imageText: all[3],
//                                         );
//                                       }),
//                                 ),
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           )),
//         );
//       }),
//     );
//   }
// }
//













//////////////////////////////////////////////////////////



class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  static const String id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Provider.of<ProductsViewModell>(context, listen: false).getRanndomshoes();
      Provider.of<ProductsViewModell>(context, listen: false)
          .generateRandomAll();
      Provider.of<ProductsViewModell>(context, listen: false)
          .generateRandomBags();
      Provider.of<ProductsViewModell>(context, listen: false)
          .generateRandomClothes();
      Provider.of<ProductsViewModell>(context, listen: false)
          .generateRandomHats();
      Provider.of<ProductsViewModell>(context, listen: false)
          .generateRandomWatches();
      setState(() {
        doneLoading = true;
      });
    });

    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   Provider.of<ProductsViewModel>(context, listen: false).getRanndomshoes();
    //     setState(() {
    //       doneLoading = true;
    //     });
    // });
  }

  bool doneLoading = false;
  @override
  Widget build(BuildContext context) {
    print('HmScrn');
    return DefaultTabController(
      length: 5,
      child: Consumer<ProductsViewModell>(builder: (_, model, child) {
        // model.getRanndomshoes();
        return Scaffold(
          body: SafeArea(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0, bottom: 10.0, right: 15.0, left: 15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Builder(
                            builder: (context) {
                              return GestureDetector(
                                onTap: () {
                                  locator<AppRouter>().router.push('/${ProfileScreen.id}');
                                },
                                child: CircleAvatar(
                                  radius: 23,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.person_outline_rounded,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                ),
                              );
                            },
                          ),
                          Column(
                            children: [
                              Text(
                                'Store location',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.grey,
                                    fontSize: 12.2),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    'FUTA Southgate, Akure',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 13.5),
                                  )
                                ],
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              locator<AppRouter>().router.push('/${NotificationScreen.id}');
                            },
                            child: CircleAvatar(
                              radius: 23,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.notifications_none_outlined,
                                color: Colors.black,
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.03,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(23)),
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.06,
                        child: Padding(
                          // padding: const EdgeInsets.only(left: 18.0),
                          padding: EdgeInsets.only(
                              left: MediaQuery.sizeOf(context).width * 0.05),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search_rounded,
                                size: 18,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.035,
                              ),
                              Text(
                                'Wanna explore our store?',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Poppins',
                                    fontSize: 13.5),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.03,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height:
                              MediaQuery.sizeOf(context).height * 0.0625, //50
                              width: double.maxFinite,
                              child: TabBar(
                                  isScrollable: true,
                                  physics: BouncingScrollPhysics(),
                                  padding: EdgeInsets.all(5),
                                  labelColor: Colors.white,
                                  labelStyle: TextStyle(
                                    fontSize: 12.85,
                                    fontFamily: 'Poppins',
                                  ),
                                  // unselectedLabelStyle: TextStyle(fontSize: 12.85, fontFamily: 'Poppins', fontStyle: FontStyle.italic),
                                  unselectedLabelColor: Colors.grey,
                                  labelPadding: EdgeInsets.only(
                                      left: 15.0,
                                      right: 15.0,
                                      top: 1.0,
                                      bottom: 1.0),
                                  // indicatorColor: Colors.red,
                                  // indicatorSize: TabBarIndicatorSize.label,
                                  // indicatorWeight: 3.0,
                                  // indicator:  BoxDecoration(),
                                  indicator: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: Colors.blue,
                                  ),
                                  // indicatorPadding: EdgeInsets.all(5.0),
                                  tabs: [
                                    Tab(
                                      text: 'Watches',
                                    ),
                                    Tab(
                                      text: 'Clothes',
                                    ),
                                    Tab(
                                      text: 'Hats',
                                    ),
                                    Tab(
                                      text: 'Bags',
                                    ),
                                    Tab(
                                      text: 'Shoes',
                                    ),
                                  ]),
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.009,
                            ),
                            Container(
                              height:
                              MediaQuery.sizeOf(context).height * 0.335, //268,
                              // width: MediaQuery.sizeOf(context).width,
                              child: TabBarView(
                                  physics: BouncingScrollPhysics(),
                                  children: [
                                    doneLoading == false
                                        ? SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: CircularProgressIndicator(
                                          color: Colors.blue,
                                        ),
                                      ),
                                    )
                                        : HomeScreenProductWidget(
                                      listview: ListView.builder(
                                        // physics: BouncingScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          itemCount:
                                          model.randomWatches.length,
                                          itemBuilder: (_, index) {
                                            var watch =
                                            model.randomWatches[index];
                                            return HomeScreenProductWidget2(
                                                icon: model.favouritesProductIds.contains(watch.id) ? Icon(
                                                  // Icons.favorite_border_outlined,
                                                  Icons.favorite_outlined,
                                                  size: 19,
                                                  color: Colors.blue,
                                                ) : Icon(Icons.favorite_border_outlined, size: 19, color: Colors.white,),
                                                cartOnTap: (){
                                                  model.addToCart(watch);
                                                },
                                                imageOnTap: (){
                                                  locator<NavigationService>().push(ProductScreen(product: watch,));
                                                },
                                                onTap: (){
                                                  model.checkFavUp(watch, index);
                                                  // model.addToFavouritesFromRandom(watch);
                                                  // model.addToFavouritesFromRandom(Product(id: watch.id, name: watch.name, image: watch.image, price: watch.price));
                                                // model.checkFavUpp(Product(id: watch.id, name: watch.name, image: watch.image, price: watch.price), index);
                                                },
                                                nameText: watch.name.toString(),
                                                priceText: watch.price.toString(),
                                                imageText: watch.image.toString());
                                          }),
                                    ),
                                    doneLoading == false
                                        ? SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: CircularProgressIndicator(
                                          color: Colors.blue,
                                        ),
                                      ),
                                    )
                                        : HomeScreenProductWidget(
                                      listview: ListView.builder(
                                        // physics: BouncingScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          itemCount:
                                          model.randomClothes.length,
                                          itemBuilder: (_, index) {
                                            var cloth =
                                            model.randomClothes[index];
                                            return HomeScreenProductWidget2(
                                                icon: model.favouritesProductIds.contains(cloth.id) ? Icon(
                                                  // Icons.favorite_border_outlined,
                                                  Icons.favorite_outlined,
                                                  size: 19,
                                                  color: Colors.blue,
                                                ) : Icon(Icons.favorite_border_outlined, size: 19, color: Colors.white,),
                                                cartOnTap: (){
                                                  model.addToCart(cloth);
                                                },
                                                imageOnTap: (){
                                                  locator<NavigationService>().push(ProductScreen(product: cloth,));
                                                },
                                                onTap: (){
                                                  model.checkFavUp(cloth, index);
                                                  // model.addToFavouritesFromRandom(Product(id: cloth.id, name: cloth.name, image: cloth.image, price: cloth.price));
                                                },
                                                nameText: cloth.name.toString(),
                                                priceText: cloth.price.toString(),
                                                imageText: cloth.image.toString());
                                          }),
                                    ),
                                    doneLoading == false
                                        ? SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: CircularProgressIndicator(
                                          color: Colors.blue,
                                        ),
                                      ),
                                    )
                                        : HomeScreenProductWidget(
                                      listview: ListView.builder(
                                        // physics: BouncingScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          itemCount: model.randomHats.length,
                                          itemBuilder: (_, index) {
                                            var hat =
                                            model.randomHats[index];
                                            return HomeScreenProductWidget2(
                                                icon: model.favouritesProductIds.contains(hat.id) ? Icon(
                                                  // Icons.favorite_border_outlined,
                                                  Icons.favorite_outlined,
                                                  size: 19,
                                                  color: Colors.blue,
                                                ) : Icon(Icons.favorite_border_outlined, size: 19, color: Colors.white,),
                                                cartOnTap: (){
                                                  model.addToCart(hat);
                                                },
                                                imageOnTap: (){
                                                  locator<NavigationService>().push(ProductScreen(product: hat,));
                                                },
                                                onTap: (){
                                                  model.checkFavUp(hat, index);
                                                  //model.addToFavouritesFromRandom(Product(id: hat.id, name: hat.name, image: hat.image, price: hat.price));
                                                },
                                                nameText: hat.name.toString(),
                                                priceText: hat.price.toString(),
                                                imageText: hat.image.toString());
                                          }),
                                    ),
                                    doneLoading == false
                                        ? SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: CircularProgressIndicator(
                                          color: Colors.blue,
                                        ),
                                      ),
                                    )
                                        : HomeScreenProductWidget(
                                      listview: ListView.builder(
                                        // physics: BouncingScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          itemCount: model.randomBags.length,
                                          itemBuilder: (_, index) {
                                            var bag =
                                            model.randomBags[index];
                                            return HomeScreenProductWidget2(
                                              icon: model.favouritesProductIds.contains(bag.id) ? Icon(
                                                // Icons.favorite_border_outlined,
                                                Icons.favorite_outlined,
                                                size: 19,
                                                color: Colors.blue,
                                              ) : Icon(Icons.favorite_border_outlined, size: 19, color: Colors.white,),
                                              cartOnTap: (){
                                                model.addToCart(bag);
                                              },
                                              imageOnTap: (){
                                                locator<NavigationService>().push(ProductScreen(product: bag,));
                                              },
                                              onTap: (){
                                                model.checkFavUp(bag, index);
                                              //  model.addToFavouritesFromRandom(Product(id: bag.id, name: bag.name, image: bag.image, price: bag.price));
                                              },
                                              nameText: bag.name.toString(),
                                              priceText: bag.price.toString(),
                                              imageText: bag.image.toString(),);
                                          }),
                                    ),
                                    doneLoading == false
                                        ? SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: CircularProgressIndicator(
                                          color: Colors.blue,
                                        ),
                                      ),
                                    )
                                        : HomeScreenProductWidget(
                                      listview: ListView.builder(
                                        // physics: BouncingScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          itemCount: model.randomShoes.length,
                                          itemBuilder: (_, index) {
                                            var shoe =
                                            model.randomShoes[index];
                                            return HomeScreenProductWidget2(
                                                icon: model.favouritesProductIds.contains(shoe.id) ? Icon(
                                                  // Icons.favorite_border_outlined,
                                                  Icons.favorite_outlined,
                                                  size: 19,
                                                  color: Colors.blue,
                                                ) : Icon(Icons.favorite_border_outlined, size: 19, color: Colors.white,),
                                                cartOnTap: (){
                                                  model.addToCart(shoe);
                                                },
                                                imageOnTap: (){
                                                  locator<NavigationService>().push(ProductScreen(product: shoe,));
                                                },
                                                onTap: (){
                                                  model.checkFavUp(shoe, index);
                                                 // model.addToFavouritesFromRandom(Product(id: shoe.id, name: shoe.name, image: shoe.image, price: shoe.price));
                                                },
                                                nameText: shoe.name.toString(),
                                                priceText: shoe.price.toString(),
                                                imageText: shoe.image.toString());
                                          }),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.03,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Latest Arrivals',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 15),
                                  ),
                                  Text(
                                    'See all',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontFamily: 'Poppins',
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.sizeOf(context).height * 0.025,
                              ), //20
                              doneLoading == false
                                  ? CircularProgressIndicator(
                                color: Colors.blue,
                              )
                                  : SizedBox(
                                height: MediaQuery.sizeOf(context).height *
                                    0.15, //120,
                                child: ListView.builder(
                                    itemCount: model.randomAll.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (_, index) {
                                      var all = model.randomAll[index];
                                      return LatestArrivalsProductCard(
                                        ontap: (){
                                          // locator<AppRouter>().router.push('/${ProductScreen.id}');
                                          locator<NavigationService>().push(ProductScreen(product: all,));
                                          // Navigator.push(context, MaterialPageRoute(builder: (_) => ProductScreen(product: all,)));
                                        },
                                        nameText: all.name.toString(),
                                        priceText: all.price.toString(),
                                        imageText: all.image.toString(),
                                      );
                                    }),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
        );
      }),
    );
  }
}
