import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "/login-screen";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoginValid = true;
  bool hasInternet = false;

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
    return OverlaySupport.global(
      child: Scaffold(
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
                              // ignore: body_might_complete_normally_nullable
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
                              // ignore: body_might_complete_normally_nullable
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
                          !isLoginValid && hasInternet
                              ? const Text("")
                              : const Text(
                                  "Pogresan e-mail ili password",
                                  style: TextStyle(color: Colors.red),
                                ),
                          !hasInternet
                              ? const Text("")
                              : const Text(
                                  "Nema internet konekcije",
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
                            onPressed: () async {
                              hasInternet = await InternetConnectionChecker()
                                  .hasConnection;
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
      ),
    );
  }
}
