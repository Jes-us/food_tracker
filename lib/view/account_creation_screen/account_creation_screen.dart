import 'package:flutter/material.dart';
import 'package:food_tracker/core/app_export.dart';
import 'package:food_tracker/widgets/custom_button.dart';
import 'package:food_tracker/widgets/custom_icon_button.dart';
import 'package:food_tracker/widgets/custom_text_form_field.dart';

class AccountCreationScreen extends StatelessWidget {
  TextEditingController group10198Controller = TextEditingController();

  TextEditingController group10198OneController = TextEditingController();

  TextEditingController group10198TwoController = TextEditingController();

  TextEditingController group10198ThreeController = TextEditingController();

  TextEditingController group10198FourController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 16,
              top: 24,
              right: 16,
              bottom: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: getSize(
                      150,
                    ),
                    width: getSize(
                      150,
                    ),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse5150x150,
                          height: getSize(
                            150,
                          ),
                          width: getSize(
                            150,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              75,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        CustomIconButton(
                          height: 30,
                          width: 30,
                          margin: getMargin(
                            top: 5,
                            right: 2,
                          ),
                          alignment: Alignment.topRight,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgForward,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 26,
                  ),
                  child: Text(
                    "First Name",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium16,
                  ),
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: group10198Controller,
                  hintText: "Enter First Name",
                  margin: getMargin(
                    top: 8,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 19,
                  ),
                  child: Text(
                    "Last Name",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium16,
                  ),
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: group10198OneController,
                  hintText: "Enter Last Name",
                  margin: getMargin(
                    top: 7,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 18,
                  ),
                  child: Text(
                    "Email Id",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium16,
                  ),
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: group10198ThreeController,
                  hintText: "Enter Email Id",
                  margin: getMargin(
                    top: 8,
                  ),
                  textInputType: TextInputType.emailAddress,
                ),
                Padding(
                  padding: getPadding(
                    top: 18,
                  ),
                  child: Text(
                    "Set Password",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium16,
                  ),
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: group10198FourController,
                  hintText: "Set Password",
                  margin: getMargin(
                    top: 8,
                  ),
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  isObscureText: true,
                ),
                CustomButton(
                  height: getVerticalSize(
                    50,
                  ),
                  text: "Create Account",
                  margin: getMargin(
                    top: 24,
                    bottom: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
