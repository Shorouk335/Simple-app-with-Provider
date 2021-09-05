import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_statamangment/Catalog.dart';
import 'package:simple_statamangment/model/DataSource.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataSource>(
      create : (context){
        return DataSource();
      },child :MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SimpleProvider(),
    ),);
  }
}
class SimpleProvider extends StatefulWidget {
  const SimpleProvider({Key? key}) : super(key: key);

  @override
  _SimpleProviderState createState() => _SimpleProviderState();
}

class _SimpleProviderState extends State<SimpleProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcom",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "User Name",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
              ),
              TextButton(onPressed:(){
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context)=>catalog()));
              } ,
                  style:TextButton.styleFrom(
                    backgroundColor: Colors.yellowAccent,
                  ),
                  child: Text("Enter",style: TextStyle(
                       color: Colors.black,
                  ),


                  ),)
            ],
          ),
        ),
      ),
    );
  }
}
