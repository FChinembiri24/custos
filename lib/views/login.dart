
import 'package:custos/views/dashboard.dart';
import 'package:flutter/material.dart';




class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}
//TODO
class _LoginState extends State<Login> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;


  @override
  Widget build(BuildContext context) {
    String hint = "Email";
    String hint2 = "password";


    if (isLoading) {
      return Container();
    } else {
      return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text(
            "Login",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Form(
          autovalidateMode: AutovalidateMode.always,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                SizedBox(
                  height: 250,
                  child: Image.asset('assets/Custos.png', fit: BoxFit.contain),
                ),
                const SizedBox(
                  height:30,
                ),
                TextFormField(
                  controller: user,
                  validator: (val)
                  {
                    return RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(val!)
                        ? ""
                        : "Enter correct email";
                  },
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: hint,
                      contentPadding:
                      const EdgeInsets.only(left: 14, bottom: 8, top: 8),
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(30.8),
                          borderSide: const BorderSide(color: Colors.white10)),
                      hintStyle: const TextStyle(color: Colors.blueGrey),
                      focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(30.8),
                          borderSide: const BorderSide(color: Colors.white10))),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: pass,
                  obscureText: true,
                  validator: (val){
                    String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                    RegExp regExp = new RegExp(pattern);
                    return regExp.hasMatch(val!)?"":"must contain digit,caps and special character";
                  },
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: hint2,
                      contentPadding:
                      const EdgeInsets.only(left: 14, bottom: 8, top: 8),
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(30.8),
                          borderSide: const BorderSide(color: Colors.white10)),
                      hintStyle: const TextStyle(color: Colors.blueGrey),
                      focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(30.8),
                          borderSide: const BorderSide(color: Colors.white10))),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Container(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: const Text("forgot password?", style: TextStyle(color: Colors.black))),
                ),
                const SizedBox(
                  height: 35,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: const Text("Login"),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Center(
                  child: ButtonTheme(
                    minWidth: 300,
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      child: const Text("Sign Up"),
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          key: _formKey,
        ),
      );
    }

  }

  }

