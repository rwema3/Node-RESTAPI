// Importing the material.dart library from the Flutter framework
import 'package:flutter/material.dart';

// Defining a custom widget named elevatedbutton
Widget elevatedbutton(
  BuildContext context, {
  // Optional parameters for the onPressed function and textString
  Function onPressed,
  String textString,
}) {
  // Returning an ElevatedButton widget
  return ElevatedButton(
    // Assigning the onPressed function to the ElevatedButton
    onPressed: onPressed,
    // Displaying the text on the ElevatedButton
    child: Text(textString),
    // Applying a custom style to the ElevatedButton
    style: ElevatedButton.styleFrom(
      
      primary: Colors.red,
    ),
  );
}
