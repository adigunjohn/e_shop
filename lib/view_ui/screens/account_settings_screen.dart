import 'package:eshop/view_model/providers/theme_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:eshop/view_ui/custom_widgets/acctsettings_widget.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({Key? key}) : super(key: key);
  static const String id = 'AccountSettingsScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: Padding(
          padding: const EdgeInsets.only(top: 17.0, bottom: 10.0, right: 15.0, left: 15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
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
                  const Text(
                    'Account & Settings',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.1,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.025,),
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Account',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 16.5,
                        ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.015,),
                  const AcctSettingsWidget(icon: Icons.notifications_active_rounded, text: 'Notification Settings',),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.013,),
                  const Divider(),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.013,),
                  const AcctSettingsWidget(icon: Icons.local_shipping_rounded, text: 'Shipping Address',),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.013,),
                  const Divider(),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.013,),
                  const AcctSettingsWidget(icon: Icons.payment_rounded, text: 'Payment Info',),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.013,),
                  const Divider(),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.013,),
                  const AcctSettingsWidget(icon: Icons.delete_outline_outlined, text: 'Close Account',),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.013,),
                  const Divider(),
                ],
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.025,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'App Settings',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 16.5,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Enable Push Notifications',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.3,
                        ),
                      ),
                      Switch(
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.blue.shade200,
                          value: true, onChanged: (value) {}),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Toggle Dark/Light Mode',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.3,
                        ),
                      ),
                      context.watch<ThemeViewModel>().getAdaptTheme == true
                          ? Opacity(
                              opacity: 0.3,
                              child: Switch(
                                  value: context
                                      .watch<ThemeViewModel>()
                                      .getThemebool,
                                  onChanged: (value) {
                                    /// Do Nada
                                  }),
                            )
                          : Switch(
                        activeColor: Colors.blue,
                              activeTrackColor: Colors.blue.shade200,
                        //       inactiveThumbColor: Colors.blue,
                        //       inactiveTrackColor: Colors.blue.shade200,
                              // value: Provider.of<ShopViewModel>(context).getThemebool,
                              value:
                                  context.watch<ThemeViewModel>().getThemebool,
                              onChanged: (value) {
                                // Provider.of<ShopViewModel>(context).setThemebool = value;
                                context.read<ThemeViewModel>().setThemebool =
                                    value;
                              }),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: Text(
                          'Activate Adaptive Theme',
                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15.3,
                             ),
                        ),
                      ),
                      context.watch<ThemeViewModel>().getThemebool == true
                          ? Opacity(
                              opacity: 0.3,
                              alwaysIncludeSemantics: true,
                              child: Checkbox(
                                  value: context
                                      .watch<ThemeViewModel>()
                                      .getAdaptTheme,
                                  onChanged: (val) {
                                    /// Do Nada
                                  }),
                            )
                          : Checkbox(
                        checkColor: Colors.white,
                              activeColor: Colors.blue,
                              value:
                                  context.watch<ThemeViewModel>().getAdaptTheme,
                              onChanged: (val) {
                                context.read<ThemeViewModel>().setAdaptTheme =
                                    val!;
                              }),
                    ],
                  ),
                  const Divider(),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
