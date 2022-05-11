import 'package:flutter/material.dart';
import 'package:easy_rich_text/easy_rich_text.dart';

class HitungApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.purpleAccent,
        title: Text("Aplikasi Hitung Luas dan Volume ",
        style: TextStyle(
        ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.blueGrey,
            ],
          ),
        ),
        
        child: Center(
          child: Column(
                children: <Widget>[
                SizedBox(
                  width: 280,
                  height: 47,
                  child: MaterialButton(
                  color: Colors.blue,
                  child: Text("Hitung Luas",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                  ),
                  ),
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => LuasApp());
                      Navigator.push(context, route);
                  },
                  ),
                ),
                SizedBox(height: 20),
               SizedBox(
                 width: 280,
                  height: 47,
                 child: MaterialButton(
                  color: Colors.blue,
                  child: Text("Hitung Volume",
                  style: TextStyle(
                    color: Colors.white,
                      fontSize: 21,
                  ),
                  ),
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => VolumeApp());
                      Navigator.push(context, route);
                  },
                  ),
               ),
                ],
                ),
        ),
      )
    );
  }
}
        class LuasApp extends StatefulWidget {
          @override
          _LuasAppState createState() => _LuasAppState();
        }

        class _LuasAppState extends State<LuasApp> {
          double panjang = 0;
          double lebar = 0;

          var _nama = new TextEditingController();

          @override
          Widget build(BuildContext context) {
            return new Scaffold(
              appBar: new AppBar(
                leading: new Icon(Icons.view_list),
                title: new Text("Menghitung Luas"),
                backgroundColor: Colors.green,
                centerTitle: true,
              ),
              backgroundColor: Colors.yellowAccent,
              body: ListView(
                children: <Widget>[
                  new Container(
                    padding: new EdgeInsets.all(20),
                    child: new Column(
                      children: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.only(top:20),
                            ),
                          new Row(
                            children: <Widget>[
                              Expanded(
                                child: TextField(
                                  onChanged: (txt){
                                    setState(() {
                                      panjang = double.parse(txt);
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: "Input Panjang",
                                    suffix: Text("cm"),
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10)
                                    ),
                                    hintText: "Panjang"
                                  ),
                                )
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                child: TextField(
                                  onChanged: (txt){
                                    setState(() {
                                      lebar = double.parse(txt);
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: "Input Lebar",
                                    suffix: Text("cm"),
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10)
                                    ),
                                    hintText: "Lebar"
                                  ),
                                )
                                ),
                            ],
                          ),
                          new Padding(
                            padding: new EdgeInsets.only(top:20),
                          ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 20
                            ),
                            child: RaisedButton(
                              onPressed: (){
                                var route = new MaterialPageRoute(
                                  builder: (BuildContext)=>
                                  new LuasPage(input_panjang: panjang, input_lebar: lebar),
                                );
                                Navigator.of(context).push(route);
                              },
                              padding: EdgeInsets.all(10.0),
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text("Hitung Luas",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        }

        class VolumeApp extends StatefulWidget {
          @override
          _VolumeAppState createState() => _VolumeAppState();
        }

        class _VolumeAppState extends State<VolumeApp> {
          double panjang = 0;
          double lebar = 0;
          double tinggi = 0;

          var _nama = new TextEditingController();

          @override
          Widget build(BuildContext context) {
            return new Scaffold(
              appBar: new AppBar(
                leading: new Icon(Icons.view_list),
                title: new Text("Menghitung Volume"),
                backgroundColor: Colors.green,
                centerTitle: true,
              ),
              backgroundColor: Colors.deepOrange,
              body: ListView(
                children: <Widget>[
                  new Container(
                    padding: new EdgeInsets.all(20),
                    child: new Column(
                      children: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.only(top:20),
                            ),
                          new Row(
                            children: <Widget>[
                              Expanded(
                                child: TextField(
                                  onChanged: (txt){
                                    setState(() {
                                      panjang = double.parse(txt);
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: "Input Panjang",
                                    suffix: Text("cm"),
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10)
                                    ),
                                    hintText: "Panjang"
                                  ),
                                )
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                child: TextField(
                                  onChanged: (txt){
                                    setState(() {
                                      lebar = double.parse(txt);
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: "Input Lebar",
                                    suffix: Text("cm"),
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10)
                                    ),
                                    hintText: "Lebar"
                                  ),
                                )
                                ),
                                 SizedBox(width: 10),
                                 Expanded(
                                child: TextField(
                                  onChanged: (txt){
                                    setState(() {
                                      tinggi = double.parse(txt);
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: "Input Tinggi",
                                    suffix: Text("cm"),
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10)
                                    ),
                                    hintText: "Tinggi"
                                  ),
                                )
                                ), 
                            ],
                          ),
                          new Padding(
                            padding: new EdgeInsets.only(top:20),
                          ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 20
                            ),
                            child: RaisedButton(
                              onPressed: (){
                                var route = new MaterialPageRoute(
                                  builder: (BuildContext)=>
                                  new VolumePage(input_panjang: panjang, input_lebar: lebar, input_tinggi: tinggi),
                                );
                                Navigator.of(context).push(route);
                              },
                              padding: EdgeInsets.all(10.0),
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text("Hitung Volume",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        }

class LuasPage extends StatelessWidget {
  const LuasPage({ required this.input_panjang, required this.input_lebar});

  final double input_panjang;
  final double input_lebar;


  @override
  Widget build(BuildContext context) {
    double hasil = (input_panjang * input_lebar*1.0);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hasil"),
      ),
  body: Container(
        color: Color.fromARGB(255, 206, 17, 17),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 20,
            child: Container(
              color: Colors.white,
            ),
          ),
          Text("Panjang : $input_panjang cm",
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Colors.black54,
            ),
            ),
        SizedBox(height: 5),
          Text("Lebar : $input_lebar cm",
          style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: Colors.black54,
          ),                          
          ),
        SizedBox(height: 5),
      Text("Jadi Luasnya adalah : ",
       style: TextStyle(
         fontSize: 20,
        fontWeight: FontWeight.w800,
         color: Colors.black54,
         ),
          ),
        EasyRichText('$hasil cm2',
         patternList: [
         EasyRichTextPattern(
        style: TextStyle(
        fontSize: 20,
         fontWeight: FontWeight.w800,
         color: Colors.black,
          ),
                                targetString: '$hasil cm',
                              ),
                              EasyRichTextPattern(
                                targetString: '2',
                                style: TextStyle(
                                  fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                ),
                                superScript: true,
                                stringBeforeTarget: 'cm',
                                matchWordBoundaries: false,
                              ),
                          ],
                           ),
        ],
        ),
  ),
    );
  }
}

class VolumePage extends StatelessWidget {
  const VolumePage({required this.input_panjang, required this.input_lebar, required this.input_tinggi});
  final double input_panjang;
  final double input_lebar;
  final double input_tinggi;


  @override
  Widget build(BuildContext context) {
    double hasil = (input_panjang * input_lebar * input_tinggi);
    return Scaffold(
       appBar: AppBar(
          centerTitle: true,
          title: Text("Hasil"),
       ),
        body: Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                          Text("Panjang : $input_panjang cm",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("Lebar : $input_lebar cm",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                            ),                          
                          ),
                          SizedBox(height: 5),
                          Text("Tinggi : $input_tinggi cm",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                            ),                          
                          ),
                          SizedBox(height: 5),
                          Text("Jadi Volumenya adalah : ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                          ),
                          ),
                          EasyRichText('$hasil cm3',
                              patternList: [
                                EasyRichTextPattern(
                                targetString: '$hasil cm',
                                style: TextStyle(
                                  fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                ),
                              ),
                              EasyRichTextPattern(
                                targetString: '3',
                                style: TextStyle(
                                  fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                ),
                                superScript: true,
                                stringBeforeTarget: 'cm',
                                matchWordBoundaries: false,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
    );
  }
}
