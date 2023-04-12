
import 'package:cryptobuy/cryptopage.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cryptobuy',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // theme: ThemeData.dark(
      // ),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body: new Container(
        child: new Column(
          children: [
            Image.asset('assets/images/372102230_BITCOIN_400px.gif',filterQuality: FilterQuality.high,
            
            ),
            Padding(padding: EdgeInsets.all(10),
            child: Column(
              children: [
                new Text(' Welcome To CryptoBuy',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Rubik'
                ),),
                Padding(padding: EdgeInsets.all(30)),
                new Text('The one stop place for all cryptocoins',style:
                  TextStyle(color: Colors.white,
                  fontSize: 30),),
                Padding(padding: EdgeInsets.all(30)),
                new ElevatedButton.icon(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Cryptopage()),
                  );
                },
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.yellow)),
                    icon:Icon(Icons.chevron_right,color: Colors.black,),
                    label: new Text('Proceed To See Markets',style:
                      TextStyle(color: Colors.black,
                      fontSize:25,
                      wordSpacing: 5)))
              ],
            ),)

          ],
        ),
      ),
    );

  }
}

