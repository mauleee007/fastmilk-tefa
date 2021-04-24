import 'package:fastmilk_admin/component/default_button.dart';
import 'package:fastmilk_admin/screen/homepage/home_page.dart';
import 'package:fastmilk_admin/services/auth_login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal * 7,
                vertical: SizeConfig.blockSizeVertical * 7),
            child: Column(
              children: [
                Icon(
                  Icons.person,
                  color: kPrimaryColor,
                  size: SizeConfig.blockSizeHorizontal * 40,
                ),
                Text(
                  "Masuk",
                  style: TextStyle(
                    fontSize: 30,
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 2),
                Text(
                  "Silahkan Masuk Sebagai Admin",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 5),
                LoginForm(),
                SizedBox(height: SizeConfig.blockSizeVertical * 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailTextFormField(),
          buildPassTextFormField(),
          SizedBox(height: SizeConfig.blockSizeVertical * 5),
          DefaultButton(
            text: "Masuk",
            press: () {
              if (_formKey.currentState.validate()) {
                Navigator.pushNamed(context, HomePage.routeName);
                final String email = emailController.text.trim();
                final String password = passwordController.text.trim();
                context.read<AuthServices>().login(
                      email,
                      password,
                    );
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPassTextFormField() {
    return TextFormField(
      controller: passwordController,
      obscureText: hidePassword,
      validator: (value) {
        if (value.isEmpty) {
          print("Password: null");
          return "Password harus diisi";
        } else if (value.length < 4) {
          return "Password minimal 5 karakter";
        }
        return null;
      },

      // onSaved: (String value) {
      //   _password = value;
      // },
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
          labelText: "Password",
          hintText: "Masukan Password",
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                hidePassword = !hidePassword;
              });
            },
            color: Theme.of(context).accentColor.withOpacity(0.4),
            icon: Icon(hidePassword ? Icons.visibility_off : Icons.visibility),
          )),
    );
  }

  TextFormField buildEmailTextFormField() {
    return TextFormField(
      controller: emailController,
      validator: (value) {
        if (value.isEmpty) {
          print("Password: null");
          return "Email harus diisi";
        }
        return null;
      },
      // onSaved: (String value) {
      //   _email = value;
      // },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Masukan Email",
      ),
    );
  }
}
