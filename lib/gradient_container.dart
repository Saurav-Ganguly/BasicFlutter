//import 'package:first_app/custom_text.dart';
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
//BUILDING CUSTOM WIDGETS
// break big widget tree to make smaller custom widget
// we can remove the container and then can be reused
// to make a widget we need class
// CLASS -> all widget / types -> Object -> dart is Object Oriented Language
// OBJECTS -> DATA STRUCTURE -> DATA + LOGIC (METHOD)
// class has constructor function -> which makes a object

//VARIABLES
//const V/S final -> const -> const (complile time const), final -> will not change (run time constatnt)
const startAlignment = Alignment.topLeft; //with var the type is inferred //?
const endAlignment = Alignment.bottomRight; //

class GradientContainer extends StatelessWidget {
  //Stateless Widget from which we inherit -> to make it a widget
  //upper case char (Strt), no white Space, CamelCase

  //contructor function
  GradientContainer({
    super.key,
    required this.colors,
  }); //named parameters //key agrument is forwarded to stateless widget
  final List<Color> colors;

  @override // we are overiding the method provided by Stateless Widget
  Widget build(context) {
    //build method must be included
    // context -> meta data object -> this widget in overall widget tree
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin:
              startAlignment, //this sets from where the gradient should start
          end: endAlignment, // this sets to where the gradient should end
        ),
      ),
      //is use to layout and style
      child: Center(
        //centers the text in the screen
        child: DiceRoller(),
        // CustomText(
        //   "Hello World!",
        //   fontsize: 40,
        // ),
      ),
    );
  } //build must return Widget
}
