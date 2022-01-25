import 'package:flutter/material.dart';
import 'package:portfolio_main_project/utils/util.dart';
import 'package:portfolio_main_project/widgets/body.dart';
import 'package:portfolio_main_project/widgets/buttonrow.dart';


class portfolio extends StatelessWidget {
  const portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 26,
                backgroundColor: Colors.pinkAccent,
                foregroundImage: NetworkImage('https://picsum.photos/200/300'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Sai Lakshmi Pathakamuri',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
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
              icon: Icon(Icons.send_sharp),
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Ping Me',style: TextStyle(fontWeight: FontWeight.w600),),
              ),
              onPressed: () {
                launchMailto();
              },
            ),
          )
          
        ],
      ),
      body: Stack(
        children: [
          Body(),

          Align(
            alignment:Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(48.0),
              child: SizedBox(
                height:59 ,
                child: ButtonRow()
                ),
            )
            )
        ],
      ),
    );
  }
}

