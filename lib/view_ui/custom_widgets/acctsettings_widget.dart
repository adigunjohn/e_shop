import 'package:flutter/material.dart';

class AcctSettingsWidget extends StatelessWidget {
  const AcctSettingsWidget({Key? key, required this.icon, this.text}) : super(key: key);
  final IconData? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                size: 20,
                color: Colors.grey,
              ),
              SizedBox(width: MediaQuery.sizeOf(context).width * 0.03,),
              Text(
                text ?? 'Unknown label',
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.3,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
