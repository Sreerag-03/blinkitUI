import 'package:flutter/material.dart';
import 'package:zoom_cart/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:zoom_cart/repository/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              UiHelper.CustomImage(img: "onboarding.png"),
              const SizedBox(
                height: 20,
              ),
              UiHelper.CustomImage(img: "logo.png"),
              const SizedBox(
                height: 20,
              ),
              UiHelper.CustomText(
                  text: "India's last minute app",
                  color: const Color(0XFF000000),
                  fontweight: FontWeight.bold,
                  fontsize: 10,
                  fontfamily: "bold"),
              const SizedBox(
                height: 10,
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFFFFFFF)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      UiHelper.CustomText(
                          text: "Sreerag",
                          color: const Color(0XFF000000),
                          fontweight: FontWeight.w400,
                          fontsize: 15),
                      const SizedBox(
                        height: 5,
                      ),
                      UiHelper.CustomText(
                          text: "75592XXXXX",
                          color: const Color(0XFF9C9C9C),
                          fontweight: FontWeight.bold,
                          fontsize: 14),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 48,
                        width: 295,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0XFFE23744),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UiHelper.CustomText(
                                  text: "Login with",
                                  color: const Color(0XFFFFFFFF),
                                  fontweight: FontWeight.w700,
                                  fontsize: 14,
                                  fontfamily: "bold"),
                              const SizedBox(
                                width: 5,
                              ),
                              UiHelper.CustomImage(img: "zomato.png")
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      UiHelper.CustomText(
                          text:
                              "Access your saved addresses from Zomato automatically",
                          color: const Color(0XFF9C9C9C),
                          fontweight: FontWeight.w400,
                          fontsize: 10),
                      const SizedBox(
                        height: 15,
                      ),
                      UiHelper.CustomText(
                          text: "or login with phone number",
                          color: const Color(0XFF269237),
                          fontweight: FontWeight.w400,
                          fontsize: 14)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
