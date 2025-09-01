import 'package:flutter/material.dart';
import 'package:flutter_application_exam/page2.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home:home(),
));

class home extends StatelessWidget{
  const home ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width ,
        height: MediaQuery.of(context).size.height ,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child:  Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.shortestSide * 1.2,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
                color : Color.fromRGBO(245, 225, 175, 1),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage("images/kuromi.jpg"),
                      ),
                      Text("Kuromi",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22, color: Colors.black),
                      ),
                      Text("Vocational High School Student at SMK Wikrama Bogor ",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color:  Color(0xF9916B0D)),
                      ),

                      TextButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => page2()),
                        );
                      },
                      child: Text(
                        'See More',
                        style: TextStyle(color: const Color.fromARGB(255, 120, 86, 39), fontSize: 18, decoration: TextDecoration.underline),
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}