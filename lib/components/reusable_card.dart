import 'package:flutter/material.dart';

//custom immutable widget
class ReusableCard extends StatelessWidget {
  //final sets once and can't update
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  ReusableCard(
      {@required this.colour, this.cardChild, this.onPress}); //{} makes it a named property

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}