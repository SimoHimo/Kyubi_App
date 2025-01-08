import 'package:flutter/material.dart';
import 'package:kyubi/core/theme/app_pallete.dart';
import 'package:kyubi/features/auth/presentation/pages/signup_page.dart';
import 'package:kyubi/features/auth/presentation/widgets/auth_field.dart';
import 'package:kyubi/features/auth/presentation/widgets/auth_gradient_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.sizeOf(context);
    // formkey.currentState!.validate();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Sign in.",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Authfield(
                hintText: 'Email',
                controller: emailController,
              ),
              const SizedBox(
                height: 15,
              ),
              Authfield(
                hintText: 'Password',
                controller: emailController,
                isObscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const AuthGredientbutton(
                buttonText: "Sign In",
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUpPage()));
                },
                child: RichText(
                  text: TextSpan(
                      text: "Don't have an Account? ",
                      style: Theme.of(context).textTheme.titleSmall,
                      children: [
                        TextSpan(
                          text: 'Sign Up.',
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: AppPallete.gradient2,
                              fontWeight: FontWeight.w900),
                        )
                      ]),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
