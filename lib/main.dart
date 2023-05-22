import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart'; //runApp() is in flutter/material.dart

// in pubspec.yaml file we have a dependency called flutter
//runApp(); -> function -> custom instruction -> show some user interface on the screen
void main() {
  // this name must always be main -> main entry point of dart file -> complied version of the main function is executed
  runApp(
    MaterialApp(
      // -> material app is passed into the runApp()
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 48, 13,
        //109), // Color are objects -> objects are data structure in memory
        // makes the basic structure of the app
        body: GradientContainer(
          colors: const [
            Color.fromARGB(255, 203, 98, 221),
            Color.fromARGB(255, 38, 2, 44)
          ],
        ), //custom widget
      ), //main agrument of
    ), // mateiral app widget -> main widget as a starting place -> configuaration stuff
  ); // what to diisplay -> needs one argument -> content that sould be seen on the screen -> which is widget tree -> nesting of widgets into each other
}

// const -> optimize the runtime performace of the application -> making more memory efficient -> code editor will add the blue lines -> also tells it from where it should be removed

// types -> type safe language -> all the values of certain types
// value are typically of mutiple types
// custom types are also possible
// core types -> int, double, string, bool, null etc

// STATE FUL AND STATE LESS
// Stateless -> no change in data
// Stateful -> 