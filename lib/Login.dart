import 'package:flutter/material.dart';
import 'package:mobile_pos/Menu.dart';
import 'package:mobile_pos/common/CustomTextStyle.dart';
import 'package:mobile_pos/common/HexColor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: HexColor('#343C49'),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
            bodyText1: TextStyle(fontSize: 18.0),
            bodyText2: TextStyle(fontSize: 18.0, color: Colors.white),
            headline1: TextStyle(
                fontSize: 18.0,
                color: HexColor('#343C49'),
                fontFamily: 'mitr')),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: HexColor('#343C49'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 32.0, top: 102.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('test'),
              Image(
                image: AssetImage('images/Rectangle 9.png'),
              ),
              SizedBox(
                height: 80.0,
              ),
              TextField(
                style: CustomTextStyle.body1(context),
                decoration: new InputDecoration(
                    hintText: 'Username',
                    labelStyle: const TextStyle(color: Colors.grey),
                    hintStyle: CustomTextStyle.body1(context),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: HexColor('#C4C4C4'), width: 5.0),
                      borderRadius: BorderRadius.circular(8.0),
                    )),
              ),
              SizedBox(
                height: 40.0,
              ),
              TextField(
                style: CustomTextStyle.body1(context),
                decoration: new InputDecoration(
                    hintText: 'Password',
                    labelStyle: const TextStyle(color: Colors.grey),
                    hintStyle: CustomTextStyle.body1(context),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: HexColor('#C4C4C4'), width: 5.0),
                        borderRadius: BorderRadius.circular(8.0))),
              ),
              SizedBox(height: 40.0),
              ButtonTheme(
                minWidth: 350.0,
                height: 50.0,
                child: RaisedButton(
                  child: Text(
                    'เข้าสู่ระบบ',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: 'mitr'),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Menu(),
                        ));
                  },
                  color: HexColor('#DF2B6C'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
