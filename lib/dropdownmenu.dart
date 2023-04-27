import 'package:flutter/material.dart' ;

class dropdownmenu extends StatefulWidget {
  const dropdownmenu({Key? key}) : super(key: key);

  @override
  State<dropdownmenu> createState() => _dropdownmenuState();
}

class _dropdownmenuState extends State<dropdownmenu> {
  List<String> items = [
    "Harsh",
    "Ankit",
    "Aryan",
    "Hitesh"
  ] ;
  String dropdownselect = "Hitesh" ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Drop down menu "),
        ),
        body: Center(
          child: DropdownButton<String>(
            iconEnabledColor :Colors.cyan ,
            dropdownColor: Colors.grey,
            value: dropdownselect,
            items: items.map<DropdownMenuItem<String>>((String value){
              return DropdownMenuItem(child: Text(value),value: value,) ;

          }).toList() ,
            onChanged: (String ? newvalue){
              setState(() {
                dropdownselect = newvalue! ;
              });
            },
          ),
        ),
      ),
    );
  }
}
