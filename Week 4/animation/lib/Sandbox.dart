import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  const Sandbox({super.key});

  @override
  State<Sandbox> createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  double _margin = 0;
  Color _color = Colors.blue;
  double _width = 200;
  double _opacity = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AnimatedContainer(duration: const Duration(seconds: 1),
          margin: EdgeInsets.all(_margin),
          width: _width,
          color: _color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
               child: const Text("Animate Margin"),
                onPressed: ()=> setState(()=> _margin=50 )

              ),

              ElevatedButton(
                  child: const Text("Animate Width"),
                  onPressed: ()=> setState(()=> _width=400 )

              ),

        ElevatedButton(
          child: const Text("Animate Colour"),
          onPressed: ()=> setState(()=> _color=Colors.purple )


        ),

        ElevatedButton(
          child: const Text("Animate Opacity"),
          onPressed: ()=> setState(()=> _opacity= 0)
        ),

              AnimatedOpacity(opacity: _opacity,
                duration: const Duration(seconds: 2),
                child:const Text("Hide me",
                  style: TextStyle(color: Colors.white ),

                ),

              ),

          ],
          ),
        ),

      ),
    );
  }

  
}


