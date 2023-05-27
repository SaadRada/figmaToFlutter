import 'package:flutter/material.dart';
import 'package:travel_app_ui/constants/colors.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    String title = "Enjoy Your Holiday, Have Fun With Us";
    String description =
        "Get Rid Of Stress And Burdens Of Mind By Taking A Vacation With Us";
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/login-background.png"),
            fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: FractionallySizedBox(
          alignment: Alignment.bottomCenter,
          heightFactor: 0.37,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.light,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColors.text,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, "home"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: AppColors.main,
                    ),
                    child: const Text(
                      "Sign Up With Your Email",
                      style: TextStyle(
                        color: AppColors.light,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
