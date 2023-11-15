import 'package:flutter/material.dart';
//
// class ImageWidget extends StatelessWidget {
//   const ImageWidget({Key? key, required this.imageText, this.MQheightmultp}) : super(key: key);
// final String imageText;
// final double? MQheightmultp;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MQheightmultp ?? MediaQuery.sizeOf(context).height *
//           0.15,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//             vertical: 8.0),
//         child: ClipRRect(
//             borderRadius:
//             BorderRadius.circular(35),
//             child: Image.asset(
//               imageText,
//             )),
//       ),
//     );
//   }
// }



class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key, required this.imageText, this.multiplyMQ, this.paddingH, this.paddingV}) : super(key: key);
  final String imageText;
  final double? multiplyMQ;
  final double? paddingV;
  final double? paddingH;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: multiplyMQ ?? MediaQuery.sizeOf(context).height *
          0.15,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: paddingV ?? 8.0, horizontal: paddingH ?? 0),
        child: ClipRRect(
            borderRadius:
            BorderRadius.circular(35),
            child: Image.asset(
              imageText,
            )),
      ),
    );
  }
}
