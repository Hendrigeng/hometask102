import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task102/view_model/view_model.dart';

import 'alretdialog.dart';

void main() {
  runApp(


          ChangeNotifierProvider(create: (context) =>ViewModel() ,
                       child: const MyApp() ,)

     );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sherien"),
       // leading:
        // IconButton(
        //   icon: const Icon(
        //     Icons.menu,
        //     semanticLabel: 'menu',
        //   ),
        //   onPressed: () {
        //     print('Menu button');
        //   },
        // ),
    ),
      drawer: SafeArea(
      child: Container(color: Colors.white, width: 250,child: Column(
        children: [
          TextButton(onPressed: (){}, child: Text("test"),),
          TextButton(onPressed: (){}, child: Text("test"),),
          TextButton(onPressed: (){}, child: Text("test"),),
        ],
      ),),
    ),
    body: 
      
      Consumer<ViewModel>(builder: (context , viewModel ,child   ){ 
        
        
        return  GridView.count(
          crossAxisCount: 2 ,
          padding: const EdgeInsets.all(16.0),
          childAspectRatio: 8.0 / 9.0,

          children:listtext(1 ,viewModel.getusername(0) ),

        );
      },)
      ,

      floatingActionButton: FloatingActionButton(onPressed: (){

       Navigator.push(context, MaterialPageRoute(builder: (context)=>Myareart())) ;


      } ,child: Icon(Icons.add),),
    );


  }
}



void name(){

}

List<Text> listtext (int cont , String username){

  String textuser = " ";

     List<Text>  mytext = List.generate(cont, (int index){
            print(index);
          return  Text("kjdkf ${textuser}");
      } );


  return  mytext ;

}



List<Card> _buildGridCards(int count) {
  List<Card> cards = List.generate(
    count,
        (int index) {
      print(index);
      return Card(

        clipBehavior: Clip.antiAlias,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 11.0,
              child: FlutterLogo(),
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  <Widget>[
                  Text('Title'),

                  TextButton(onPressed: (){
                    print(index);
                  }, child: Text("click"))
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
  return cards;
}


