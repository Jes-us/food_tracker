import 'package:flutter/material.dart';
import 'package:food_tracker/core/app_export.dart';
import 'package:food_tracker/widgets/app_bar/appbar_image.dart';
import 'package:food_tracker/widgets/app_bar/appbar_title.dart';
import 'package:food_tracker/widgets/app_bar/custom_app_bar.dart';
import 'package:food_tracker/widgets/custom_button.dart';
import 'package:food_tracker/widgets/custom_text_form_field.dart';

class EmailLoginScreen extends StatelessWidget {
  TextEditingController group10198Controller = TextEditingController();

  TextEditingController group10198OneController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 16),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Email Sign in")),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 23, right: 16, bottom: 23),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Email",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: group10198Controller,
                              hintText: "Enter Your Email",
                              margin: getMargin(top: 8),
                              textInputType: TextInputType.emailAddress),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Text("Password",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: group10198OneController,
                              hintText: "Enter Password",
                              margin: getMargin(top: 7),
                              padding: TextFormFieldPadding.PaddingT12,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: Container(
                                  margin: getMargin(all: 12),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgEye)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(44)),
                              isObscureText: true),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(top: 12, right: 6),
                                  child: Text("Forgot Password?",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroyMedium14))),
                          CustomButton(
                            height: getVerticalSize(50),
                            text: "Sign in",
                            margin: getMargin(top: 25, bottom: 5),
                            onTap: () => Navigator.pushNamed(
                                context, AppRoutes.cupBoardScreen),
                          ),
                          CustomButton(
                            height: getVerticalSize(50),
                            text: "Sign Up",
                            margin: getMargin(top: 10, bottom: 5),
                            onTap: () => Navigator.pushNamed(
                                context, AppRoutes.accountCreationScreen),
                          )
                        ])))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
