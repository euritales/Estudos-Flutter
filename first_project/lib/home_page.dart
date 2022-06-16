import 'package:first_project/app_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() {
    return HomePageStates();
  }
}

class HomePageStates extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello, Mobile World!"),
          actions: [CustomSwitch()],
        ),
        body:  Container(
          width: double.infinity ,
          height: double.infinity ,
          child: Column(
            children: [
              Text('Contador: $counter', style: TextStyle(fontSize: 20.0),),
              CustomSwitch(),
              Container(height: 50),
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, //alinhamento vert
            crossAxisAlignment: CrossAxisAlignment.start, // Alinhamento Horiz
                children: [Container(
                   width: 50,
                   height: 50,
                   color: Colors.black,

                ),Container(
                   width: 50,
                   height: 50,
                   color: Colors.black
                ),Container(
                   width: 50,
                   height: 50,
                   color: Colors.black
                )]
              )]
              )
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => {
                  setState(() {
                    counter++;
                  })
                }));
  }
}


class CustomSwitch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Switch(
            value: AppController.instance.isDarkTheme,
            onChanged: (value) {
              AppController.instance.changeTheme();
            }
          );
  }
}


// Center(
//           child: GestureDetector(
//         child: Text(
//           'Contador: $counter',
//           style: TextStyle(fontSize: 50.0),
//         ),
//         onTap: () {
          
//           print('Clicado $counter!');
//         },
//       ))