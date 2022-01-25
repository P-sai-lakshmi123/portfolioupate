
import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final String buttonText;
  final Widget icon;
  
  const ContactButton({
    Key? key, required this.buttonText, required this.icon,  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton.icon(
        style:TextButton.styleFrom(
          textStyle:  TextStyle(
            
          ),
          backgroundColor: Color(0XFFFBEFD9),
          
          shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(24.0),
          ),
        ),
        onPressed: (){
          
        },
         icon: icon, 
        label: Text('$buttonText')
        ),
    );
  }
}
