import 'package:eshop/utils/locator.dart';
import 'package:eshop/utils/router.dart';
import 'package:eshop/view_model/providers/products_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);
  static const String id = 'CheckoutScreen';
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductsViewModell>(builder: (_, model, child) {
      return Scaffold(
        body: SafeArea(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 17.0,),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            locator<AppRouter>().router.pop();
                          },
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                size: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Checkout',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: Colors.blue
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.1,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.025,
                  ),
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(  decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Contact Information',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15.3,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Icon(Icons.email_outlined, color: Colors.black,size: 23,),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'ijaopotaiwo@gmail.com',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            'Email',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Icon(Icons.edit, color: Colors.grey, size: 23,),
                                ],
                              ),
                              SizedBox(height: 8,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Icon(Icons.phone_outlined, color: Colors.black,size: 23,),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '+234 818 928 4442',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            'Phone',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Icon(Icons.edit, color: Colors.grey, size: 23,),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Address',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15.3,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Stateline Road, Futa Southgate, 32400 Akure.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_drop_down_rounded, color: Colors.grey, size: 23,),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                    // height: 100,
                                      width: double.infinity,
                                      child: SvgPicture.asset('assets/svg/gifts.svg',fit: BoxFit.fitWidth,color: Colors.purple,)),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Payment Method',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15.3,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Icon(Icons.credit_card_rounded, color: Colors.blue,size: 23,),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Bank Card',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            '**** **** 0696 4629',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Icon(Icons.arrow_drop_down_rounded, color: Colors.grey, size: 23,),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 14,),
                  Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Subtotal',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '\$${model.CalculateSubtotalCartPrice.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Shopping',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    model.cartItems.length <= 4 ? '\$19.99' : '\$29.99',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total Cost',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '\$${model.TotalPrice.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 3,),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: MaterialButton(
                                  onPressed: () {
                                    showDialog(context: context, builder: (_) => AlertDialog(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                                      content: SizedBox(
                                        height: MediaQuery.sizeOf(context).height / 2.5,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              radius: 55,
                                              backgroundColor: Colors.blue.shade100,
                                              child: Text('🎉', style: TextStyle(fontSize: 60),),
                                              // child: Icon(Icons.celebration_rounded, color: Colors.orange,size: 60,),
                                            ),
                                            Text(
                                              'Your Payment is\nSuccessful',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Poppins',
                                                fontSize: 17,
                                                color: Colors.black,
                                              ),
                                            ),
                                            MaterialButton(
                                              onPressed: () {
                                             model.deleteCart();
                                               locator<AppRouter>().router.pop();
                                               locator<AppRouter>().router.pop();
                                               // locator<AppRouter>().router.pop();
                                              },
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(25)),
                                              color: Colors.blue,
                                              minWidth: MediaQuery.sizeOf(context).width / 2,
                                              child: Padding(
                                                padding: const EdgeInsets.all(12.0),
                                                child: Text(
                                                  'Back To Shopping',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 14.5,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ));
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                  color: Colors.blue,
                                  minWidth: MediaQuery.sizeOf(context).width,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      'Payment',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 14.5,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}


