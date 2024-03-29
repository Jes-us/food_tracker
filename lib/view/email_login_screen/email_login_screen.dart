import 'package:flutter/material.dart';

import 'package:food_tracker/core/app_export.dart';
import 'package:food_tracker/main.dart';

import '../components/custom_snackbar.dart';

class EmailLoginScreen extends StatelessWidget {
  TextEditingController group10198Controller = TextEditingController();

  TextEditingController group10198OneController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    UserViewModel userViewModel = context.watch<UserViewModel>();

    return Consumer<Manage>(builder: (context, Manage themeNotifier, child) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: Theme.of(context).colorScheme.background,
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
                title: AppbarTitle(text: "Email Sign in"),
                actions: [
                  IconButton(
                      icon:
                          CustomAnimatedIcon(change: themeNotifier.actualTheme),
                      onPressed: () {
                        themeNotifier.changeTheme(ThemeMode.dark);
                        //change = true;
                      }),
                ],
              ),
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
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground)),
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
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground))),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: group10198OneController,
                                hintText: "Enter Password",
                                margin: getMargin(top: 8),
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
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onBackground)))),
                            CustomButton(
                                height: getVerticalSize(50),
                                text: "Sign in",
                                margin: getMargin(top: 25, bottom: 5),
                                onTap: () async {
                                  try {
                                    await userViewModel.sigmImWithEmailPassword(
                                        group10198Controller.text,
                                        group10198OneController.text);

                                    if (userViewModel.userLogged) {
                                      SharedPreferences userPreferences =
                                          await SharedPreferences.getInstance();
                                      userPreferences.setString(
                                          "email", group10198Controller.text);

                                      Navigator.pushNamed(
                                          context, AppRoutes.cupBoardScreen);
                                    }
                                  } catch (e) {
                                    await ScaffoldMessenger.of(context)
                                        .showSnackBar(
                                            CustomSnackBar.show(context));
                                  }
                                }),
                            CustomButton(
                              height: getVerticalSize(50),
                              text: "Sign Up",
                              margin: getMargin(top: 10, bottom: 5),
                              onTap: () => Navigator.pushNamed(
                                  context, AppRoutes.accountCreationScreen),
                            )
                          ])))));
    });
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
