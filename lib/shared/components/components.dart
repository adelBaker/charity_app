
import 'package:flutter/material.dart';

Widget defaultButton ({
  double width=double.infinity,
  Color background=Colors.deepOrange,
  bool isUpperCase=true,
  double radius= 0,
  required String text,
  required Null Function() function,

}) =>  Container(
  width: width,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius,),
    color: background,
  ),
  child: MaterialButton(
    onPressed: function,
    child:  Text(
      isUpperCase? text.toUpperCase():text,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);

Widget itemBuilder({
  required String text,
  required String path,
  required dynamic Function()? onTap,

})=> Expanded(

  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10,),
          color: Colors.grey[200],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(path,
            ),
             Text(text,
             textAlign: TextAlign.center,
             style: const TextStyle(
               fontSize: 16,
              
             ),),
          ],
        ),
      ),
    ),
  ),
);

