import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

// condgirer les couleur principales
final mainColor = Colors.white30;
final secondaryColor = Colors.greenAccent[900];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        appBar: AppBar(
          backgroundColor: Colors.white70,
          elevation: 0,
          title: Text(
            "                       CURRENCY CONVERTER",
            style: TextStyle(color: Colors.black45),
          ),
        ),
        body: Padding(
        padding: const EdgeInsets.all(30.0),
    child: Column(
    children: [
    _buildCurrencyView(
      urlFlag:
      'https://cdn.countryflags.com/thumbs/burkina-faso/flag-400.png',
      nameCountry:'BF',
      currencyName:'XOF',
      symbol:'\CFA'
      ),
      SizedBox(
        height: 30,
      ),
      Row(
        children: [
          Container(
            height: 50,
              width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Colors.blueGrey.shade500.withOpacity(1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0,3))

              ]
            ),
            child: Center(
              child: Text(
                '=',
                style:  TextStyle(fontSize: 30,fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.indigo)

                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    children: [
                      Icon(Icons.switch_right),
                      Text('Switch currencies', style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ) ,)
                    ],
                  ),
                ),
              ),
              
            ],
          ),
         

        ],
      ),
       SizedBox(
height:30,
          ),
_buildCurrencyView( urlFlag:
      'https://cdn.countryflags.com/thumbs/france/flag-400.png',
      nameCountry:'FR',
      currencyName:'EUR',
      symbol: '\ € '),

    ],
    ),
    ),
    );
  }

  Container _buildCurrencyView(
      {required String urlFlag,required String nameCountry, required String currencyName,required String symbol}) {
    return Container(
  height: 220,
  decoration: BoxDecoration(
  color: mainColor,
  borderRadius:BorderRadius.circular(15),
  boxShadow:[ BoxShadow(
  color: Colors.blueGrey.shade500.withOpacity(1),
  spreadRadius: 2,
  blurRadius: 4,
  offset: Offset(0,3))
  ]),
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Row(
    children: [
    ClipRRect(
    borderRadius: BorderRadius.circular(5),
    child:  Image.network(urlFlag,
     height :30,
    width: 50,),
   
    ),

    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(nameCountry,
          style: TextStyle(
          color: Colors.black45,
          fontSize: 17,
          fontWeight: FontWeight.w600)),

      Text(currencyName,
      style: TextStyle(
      color: Colors.yellow,
      fontSize: 15,
      fontWeight: FontWeight.w600))
        ],
      ),
    ),
      Icon(
        Icons.chevron_right,
        color: Colors.blueAccent,
      )
    ],
    ),
TextField(
style:
TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
decoration: InputDecoration(
  hintText: '0.0 ',
  suffixIcon: Text(
    symbol,
    style:  TextStyle(fontSize: 20,
    color:  Colors.greenAccent),
  ),
  suffixIconConstraints: BoxConstraints(minWidth: 0,),
),
)
    ],
    ),
  ),
  );
  }
}
