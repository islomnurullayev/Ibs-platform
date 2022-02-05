import 'package:flutter/material.dart';
import 'package:ibs_platform/login/signup.dart';
import 'package:ibs_platform/theme/style.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hiddenpassword = true;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.network(
                          "https://c.neh.tw/thumb/f/720/5b5b8f3ff3684af39ffa.jpg")
                      .image,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: Style.cource,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "You can't have an empty email";
                            }
                            if (value.length < 2) {
                              return "Email must have more than one character";
                            }
                          },
                          decoration: InputDecoration(
                            labelText: 'Email ID',
                            helperText:
                                'This has to be over two characters in length',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            hintText: 'Email ID',
                            prefixIcon: Icon(Icons.email),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "You can't have an empty password";
                            }
                            if (value.length < 2) {
                              return "Password must have more than one character";
                            }
                          },
                          obscureText: hiddenpassword,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            helperText:
                                'This has to be over two characters in length',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            hintText: 'password',
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: InkWell(
                              onTap: _togglepasswordView,
                              child: Icon(
                                Icons.visibility,
                              ),
                            ),
                          ),
                          maxLength: 8,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  ElevatedButton(
                    child: Center(
                      child: Text(
                        'Login',
                        style:
                            TextStyle(color: Style.colors.white, fontSize: 20),
                      ),
                    ),
                    onPressed: () {
                      formKey.currentState!.validate()
                          ? ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Text is valid')))
                          : ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Text is not valid')));
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: Style.prices,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Signup()),
                          );
                        },
                        child: Center(
                          child: Text(
                            'Register',
                            style: TextStyle(color: Style.colors.darkBlue),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _togglepasswordView() {
    setState(
      () {
        hiddenpassword = !hiddenpassword;
      },
    );
  }
}
