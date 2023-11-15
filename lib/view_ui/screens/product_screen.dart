import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);
  static const String id = 'ProductScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: Center(child: Text('This Product Screen'),),
    );
  }
}
