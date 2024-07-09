import 'package:flutter/material.dart';
import 'package:foodqueen/gen/assets.gen.dart';
import 'package:foodqueen/gen/fonts.gen.dart';
import 'package:foodqueen/utils/common_widgets/button.dart';
import 'package:foodqueen/utils/common_widgets/sized_box.dart';
import 'package:foodqueen/utils/common_widgets/text_field.dart';
import 'package:foodqueen/utils/extensions.dart';
import 'package:foodqueen/values/app_colors.dart';

class BottomSheetHome extends StatelessWidget {
   BottomSheetHome({super.key, this.textcontroller,this.onPressed,this.errorText});

  final TextEditingController? textcontroller;
  VoidCallback? onPressed;
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: BottomSheet(
        onClosing: () {},
        enableDrag: false,
        builder: (context) {
          return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppSizedBox.h30,
                Assets.images.wificonnection.image(
                  height: 120,
                  width: 120,
                ),
                AppSizedBox.h8,
                const Text(
                  'Oops! connection failed',
                  style: TextStyle(
                      color: AppColors.colorTextBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: FontFamily.adobeClean,
                      fontSize: 21),
                ),
                AppSizedBox.h16,
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Please ensure all devices are connected to the same WiFi network and that the FoodyQueen app is running',
                    style: TextStyle(
                        color: AppColors.colorTextBlack2,
                        fontFamily: FontFamily.adobeClean,
                        fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                AppSizedBox.h20,
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: AppTextFieldBorder(
                    labelText: 'Enter Ip Address',controller: textcontroller, errorText:errorText),
                ),
                AppSizedBox.h16,
                SizedBox(
                  width: context.screenSize.width - 55,
                  height: 50,
                  child: AppButton(
                      labelText: 'Continue',
                      onPressed: onPressed
                  ),
                ),
                AppSizedBox.h16,

              ]);
        },
      ),
    );
  }
}
