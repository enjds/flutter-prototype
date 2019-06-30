import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double topOffset = screenSize.height - 520.0;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/login_top.png'), fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  child: Container(),
                ),
                Container(
                  height: 335,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/login_bottom.png'),
                        fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            top: true,
            bottom: true,
            minimum: EdgeInsets.only(right: 32, left: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new LanguageToggleButton(),
                    Image.asset(
                      'assets/sunlife_logo.png',
                      width: 128,
                      height: 54,
                    ),
                    // SizedBox(
                    //   height: 47,
                    // ),
                    new LoginForm(),
                  ],
                ),
                new FirstTimeLogin(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FirstTimeLogin extends StatelessWidget {
  const FirstTimeLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'First time logging in?',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: OutlineButton(
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Color.fromRGBO(0, 57, 70, 1),
                  ),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(0, 57, 70, 1),
                    ),
                  ),
                  onPressed: () => print('register clicked')),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        FlatButton(
          child: Text(
            'Contact Us',
            style: TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(0, 57, 70, 1),
            ),
          ),
          onPressed: () =>
              Navigator.pushReplacementNamed(context, '/contact-us'),
        )
      ],
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Color.fromRGBO(74, 114, 149, 1),
            ),
            decoration: InputDecoration(
              labelText: 'Username',
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Color.fromRGBO(74, 114, 149, 1),
              ),
            ),
          ),
          Stack(
            children: <Widget>[
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color.fromRGBO(74, 114, 149, 1),
                  ),
                ),
              ),
              // Align(
              //   alignment: Alignment.bottomRight,
              //   child: FlatButton(
              //     padding: EdgeInsetsDirectional.only(top: 10),
              //     child: Text(
              //       'SHOW',
              //       style: TextStyle(
              //         fontSize: 12,
              //         fontWeight: FontWeight.normal,
              //         color: Color.fromRGBO(74, 114, 149, 1),
              //       ),
              //     ),
              //     onPressed: () => print('show password'),
              //   ),
              // )r
            ],
          ),
          SizedBox(
            height: 47,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(0, 57, 70, 1),
                    ),
                  ),
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, '/dashboard'),
                ),
              ),
            ],
          ),
          FlatButton(
            child: Text(
              'Forgot Username/Password',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(0, 57, 70, 1),
              ),
            ),
            onPressed: () => print('Forgot username'),
          )
        ],
      ),
    );
  }
}

class LanguageToggleButton extends StatelessWidget {
  const LanguageToggleButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('tapped'),
      child: Align(
        alignment: Alignment.topRight,
        child: Text(
          '中文',
          style: TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(0, 57, 70, 1),
          ),
        ),
      ),
    );
  }
}
