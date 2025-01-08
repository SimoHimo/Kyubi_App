import 'package:flutter/material.dart';
import 'package:kyubi/features/auth/presentation/widgets/auth_field.dart';
import 'package:kyubi/features/auth/presentation/widgets/auth_gradient_button.dart';
import '../../../../core/theme/app_pallete.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    //formkey.currentState!.validate();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text("Sign Up.", style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold), ),
              const SizedBox(height: 20,),
              Authfield(hintText: 'Name',controller:nameController,),
              const SizedBox(height: 15,),
              Authfield(hintText: 'Email',controller: emailController,),
              const SizedBox(height: 15,),
              Authfield(hintText: 'Password',controller: passwordController,isObscureText: true,),
              const SizedBox(height: 20,),
              const AuthGredientbutton(buttonText: 'Sign Up',),
              const SizedBox(height: 20,),
              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));},
                child: RichText(
                    text: TextSpan(
                        text: "Already have an Account? ",
                        style: Theme.of(context).textTheme.titleSmall,
                        children: [
                          TextSpan(
                            text: 'Sign In.',
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                color: AppPallete.gradient2,
                                fontWeight: FontWeight.w900),
                          )
                        ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
