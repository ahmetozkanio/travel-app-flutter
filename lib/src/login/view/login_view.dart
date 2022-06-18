import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/src/home/view/home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/city_tour.png"),
                const Text(
                  "Login",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    floatingLabelStyle: const TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    labelText: "E-mail",
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    floatingLabelStyle: const TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    suffixIcon: const Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 5),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    labelText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      fixedSize: const Size(double.infinity, 52.0)),
                  onPressed: () => Get.to(() => const HomeView()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(fontSize: 22.0),
                      ),
                      const SizedBox(
                        width: 6.0,
                      ),
                      const Icon(
                        Icons.arrow_forward,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Forgot password"),
                    const SizedBox(
                      width: 8.0,
                    ),
                    InkWell(
                        onTap: () {},
                        child: const Text(
                          "Get New",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Do you have an account?"),
                    const SizedBox(
                      width: 8.0,
                    ),
                    InkWell(
                        onTap: () {},
                        child: const Text(
                          "Create New",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          )),
        ));
  }
}
