import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

void openPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Next page'),
       
        ),
        body: const Center(
          child: Text(
            'This is the next page',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
    },
  ));
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        leading: IconButton(icon: Icon(Icons.menu),),
            centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.track_changes),
            tooltip: 'Show Snackbar',
           
          ),

        
        ],
      ),
      
      body:  Center(
        
        child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
 Image(
  image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
  width: 200.0,
),
Center(
  child: Container(
    margin: const EdgeInsets.all(10.0),
    color: Colors.amber[600],
    width: 48.0,
    height: 48.0,
  ),
),
Center(
  child: Container(
    margin: const EdgeInsets.all(10.0),
    color: Colors.red[600],
    width: 48.0,
    height: 48.0,
  ),
),


],

        ),
 
        
        ),
        
      floatingActionButton: 
      FloatingActionButton(
  backgroundColor: const Color(0xff03dac6),
  foregroundColor: Colors.black,
 
  child: Icon(Icons.add),
  
),

       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
    
    
  }
  
  
}
