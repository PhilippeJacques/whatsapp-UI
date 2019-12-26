import 'package:flutter/material.dart';

void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      title: "Whatsapp clone",
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State createState() =>  _HomePageState();
    
  }
  class _HomePageState extends State<HomePage>{

static String url = '';

static List<String> dados = [
  'Group de partenaires',
  'Famille de Silva',
  'Alice Pereira'
];

    List<Widget> containers = [
       Container(color: Colors.green,),
       Container(
         color: Colors.white,
         child: ListView.builder(
           itemCount: dados.length,
           itemBuilder: (context, index){
             var title = dados.elementAt(index);

             return Container(
               width: double.maxFinite,
               height: 98,
               child: Padding(
                 padding: const EdgeInsets.all(16.0),
               child: Column(
               children: <Widget>[
                Row(
                 children: <Widget>[
                   Image(

                     width: 50,
                     height: 50,
                     image: NetworkImage(url),
                   ),
                   Column(
                     children: <Widget>[
                       Text(title,
                       style: TextStyle(
                         fontWeight: FontWeight.bold
                       ),
                       ),
                       Text('')
                     ],
                   ),
                   Spacer(),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text("11:45", style: TextStyle(
                         color: Colors.green
                       ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 4, left: 8),
                       
                     child:  Container(
                         width: 30,
                         height: 30,
                         decoration: BoxDecoration(
                           color: Colors.green,
                           borderRadius: BorderRadius.all(Radius.circular(100))
                         ),
                         child: Center(
                           child: Text(
                             '3',
                             style: TextStyle(
                               color: Colors.white
                             ),
                           ),
                         ),
                       ),
                       )
                     ],
                   )
                 ],
               ),
               Container(
                 margin: EdgeInsets.only(left: 50),
            child:   Divider(
                 color: Colors.black,
               ),
               )
               ],
               ),
               ),
             );
           },
         ),
         ),
       Container(color: Colors.blue,),
      ];

@override
Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
    child: Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color(0xFF1D5D51),
        title: Text("Whatsapp by Philippe"),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.message),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert),
          )
        ],
        bottom: TabBar(
          indicatorWeight: 3,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              text: 'Discussion'.toUpperCase(),
            ),
            Tab(
              text: 'statut'.toUpperCase(),
            ),
            Tab(
              text: 'Contact'.toUpperCase(),
            )
          ],
        ),
      ),
      body: TabBarView(
        children: containers,
      ),
    ),
    );
  }
  }
