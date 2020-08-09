import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipPath(
                  child: Image.asset("images/img-1.png",),
                  clipper: MyClipper(),
        ),

        ClipPath(
                  child: Image.asset("images/img-1.png",),
                  clipper: YourClipper(),
        ),

        ],
      )
      
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    // throw UnimplementedError();
    var path=Path();
    path.lineTo(0.0,size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;

  }

  @override   
  bool shouldReclip(CustomClipper<Path> oldClipper) =>false;

}

class YourClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    // throw UnimplementedError();
    var path=Path();
    path.moveTo(size.width,0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();

    
    path.close();
    return path;

  }

  @override   
  bool shouldReclip(CustomClipper<Path> oldClipper) =>false;

}