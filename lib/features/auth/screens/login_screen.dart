import 'package:doctor_app/main.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "/login-screen";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoginValid = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Vector2x.png',
              height: 70,
            ),
            const SizedBox(
              height: 40,
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextFormField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              hintText: "E-mail",
                            ),
                            maxLines: 1,
                            validator: (value) {
                              if (value!.isEmpty || !value.contains("@")) {
                                setState(() {
                                  isLoginValid = false;
                                });
                              } else {
                                setState(() {
                                  isLoginValid = true;
                                });
                              }
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextFormField(
                            controller: _passwordController,
                            decoration: const InputDecoration(
                              hintText: "Password",
                            ),
                            maxLines: 1,
                            validator: (value) {
                              if (value!.isEmpty || value.length < 6) {
                                setState(() {
                                  isLoginValid = false;
                                });
                              } else {
                                setState(() {
                                  isLoginValid = true;
                                });
                              }
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        isLoginValid
                            ? const Text("")
                            : const Text(
                                "Invalid e-mail or username",
                                style: TextStyle(color: Colors.red),
                              ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(40),
                              backgroundColor: Colors.green[
                                  500]), //Colors.fromRGB ne radi kako treba
                          onPressed: () {
                            if (!_formKey.currentState!.validate()) {
                              setState(() {
                                isLoginValid = false;
                              });
                            }
                          },
                          child: const Text(
                            "Log in",
                          ),
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      )),
    );
  }
}
