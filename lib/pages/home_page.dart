import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text("welcome").tr(),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      context.locale = Locale('en', 'US');
                    },
                    color: Colors.green,
                    child: Text("English"),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      context.locale = Locale('ru', 'RU');
                    },
                    color: Colors.red,
                    child: Text("Russian"),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      context.locale = Locale('uz', 'UZ');
                    },
                    color: Colors.blue,
                    child: Text("Uzbek"),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      context.locale = Locale('fr', 'FR');
                    },
                    color: Colors.orange,
                    child: Text("French"),
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
