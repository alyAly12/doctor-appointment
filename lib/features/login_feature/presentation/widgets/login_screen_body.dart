import 'package:doctor_appointment/core/common_widgets/custom_button.dart';
import 'package:doctor_appointment/core/common_widgets/custom_text_form_field.dart';
import 'package:doctor_appointment/core/common_widgets/custom_text_widget.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/features/login_feature/presentation/widgets/already_have_account_widget.dart';
import 'package:doctor_appointment/features/login_feature/presentation/widgets/terms_and_conditions_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late FocusNode emailNode;
  late TextEditingController passwordController;
  late FocusNode passwordNode;
  bool obscureText = true;

  @override
  void initState() {
    emailController = TextEditingController();
    emailNode = FocusNode();
    passwordController = TextEditingController();
    passwordNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: CustomTextWidget(
                  title: AppStrings.welcome,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainColor,
                )),
            SizedBox(
              height: 40.h,
            ),
            CustomTextWidget(
              title: AppStrings.loginHeaderTitle,
              fontSize: 15.sp,
              fontWeight: FontWeight.w300,
              color: AppColors.lightTitleColor,
              textAlign: TextAlign.start,
              maxLines: 3,
            ),
            SizedBox(
              height: 36.h,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  CustomTextFormField(
                    controller: emailController,
                    focusNode: emailNode,
                    hintText: 'Enter Your Email',
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFormField(
                    controller: passwordController,
                    focusNode: passwordNode,
                    hintText: 'Enter Your Password',
                    textInputAction: TextInputAction.done,
                    obsecureText: obscureText,
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        child: Icon(obscureText
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined)),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  const Align(
                    alignment: Alignment.topRight,
                    child: CustomTextWidget(
                      title: AppStrings.forgetPassword,
                      fontSize: 16,
                      color: AppColors.mainColor,
                      textDecoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                 CustomButton(onPressed: (){},
                     title: AppStrings.login,
                     textSize: 20.sp,
                     textWeight: FontWeight.bold,
                     left: 4,
                     right: 4,
                     buttonHeight: 55.h,
                     radius: 12,
                     showIcon: false),
                  SizedBox(
                    height: 50.h,
                  ),
                  const TermsAndConditions(),
                  SizedBox(
                    height: 60.h,
                  ),
                  const AlreadyHaveAccountWidget()

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
