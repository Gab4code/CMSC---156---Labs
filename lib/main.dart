import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lab 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //var i = 1;
  genChildren() {
  for (var i ; i <= 65; i++) {
    if (i%2 == 0){
      Container (
      width: 50,
      height: 50,
      color: Colors.black,
    );
    
    } else {
      Container (
      width: 50,
      height: 50,
      color: Colors.black,
    );
    }
  }
}

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text ("CheckerBoard"),
      backgroundColor: Colors.orange,),
      body: Container(
        color: Colors.blue,
        child: GridView.count(
          crossAxisCount: 8,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          padding: const EdgeInsets.all(20),
          children: [
          for (var j = 1; j <= 8; j++)      //row
            for (var i= 1; i <= 8; i++)     //column
          
      
          
            if(j%2 == 1 && j <= 3)      //lessthan 3 rows 
          
      
              if (i%2 == 0)             //even
                Container (
                width: 50,
                height: 50,
                color: Colors.white,
                )
        
              else 
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container (
                    width: 50,
                    height: 50,
                    color: Colors.black,
                    ),
                    Container (
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                    )
                  ],
                )
            else if(j%2 == 0 && j <= 3) //lessthan 3 rows
        
              if (i%2 == 1)             //odd
                Container (
                width: 50,
                height: 50,
                color: Colors.white,
                )
        
              else 
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container (
                    width: 50,
                    height: 50,
                    color: Colors.black,
                    ),
                    Container (
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                    )
                  ],
                )
            else if(j%2 == 0 && j >= 6) //greaterthan 6 rows
        
              if (i%2 == 1)             //odd
                Container (
                width: 50,
                height: 50,
                color: Colors.white,
                )
        
              else 
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container (
                    width: 50,
                    height: 50,
                    color: Colors.black,
                    ),
                    Container (
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                    )
                  ],
                )
                
            else if(j%1 == 0 && j >= 6) //greaterthan 6 row
        
              if (i%2 == 0)             //even
                Container (
                width: 50,
                height: 50,
                color: Colors.white,
                )
        
              else 
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container (
                    width: 50,
                    height: 50,
                    color: Colors.black,
                    ),
                    Container (
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                    )
                  ],
                )
      
      
                
            else if(j%2 == 1)     //this is for the center part or the rest of the code
          
      
              if (i%2 == 0)   
                Container (
                width: 50,
                height: 50,
                color: Colors.white,
                )
        
              else 
                Container (
                width: 50,
                height: 50,
                color: Colors.black,
                )
            else  
              if (i%2 == 1)
                  Container (
                  width: 50,
                  height: 50,
                  color: Colors.white,
                  )
                
                else 
                  Container (
                  width: 50,
                  height: 50,
                  color: Colors.black,
                  )
      
          
          ]
            
      
          ),
      )
    );
  }  
}

