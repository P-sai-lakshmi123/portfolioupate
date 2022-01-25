import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:portfolio_main_project/utils/util.dart';

import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  final projectsList = [
    {
      'title': 'BMI calculator',
      'subtitle': 'Developed using flutter',
      'image':
          'https://media.istockphoto.com/photos/financial-reports-and-bar-graph-picture-id960680122?b=1&k=20&m=960680122&s=170667a&w=0&h=B43os0K9Qq5mAFgJUjIuwzrIydmL0IM6v04HPSPm1cg='
    },
    {
      'title': 'Kafeteria Management system',
      'subtitle': 'Developed using WordPress\n ',
      'image':
          'https://media.istockphoto.com/photos/empty-cafe-interior-with-chairs-and-tables-picture-id1286692956?b=1&k=20&m=1286692956&s=170667a&w=0&h=PGjBVMeX_zHAEO_6ZPipHTfQx5zoQBOU24Z4bG4Xqsk='
    },
    {
      'title': 'Finding locations in google map',
      'subtitle': 'Developed using flutter',
      'image':
          'https://media.istockphoto.com/photos/network-gps-navigation-modern-city-future-technology-picture-id922762614?b=1&k=20&m=922762614&s=170667a&w=0&h=Xp5f_DdRsLJovwBC4URmMisyDh2Y17uxOqqhkpJgjCo='
    },
    {
      'title': 'Diabetes Prediction',
      'subtitle': 'Developing using Machine Learning',
      'image':
          'https://images.unsplash.com/photo-1599814516324-66aa0bf16425?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZGlhYmV0ZXMlMjBwcmVkaWN0aW9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
  ];

  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 1,
            child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Expanded(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Opacity(
                              opacity: 0.4,
                              child: Image.asset(
                                'sai.jpeg',
                                height: 670,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Text(
                                    ' I \'m sai lakshmi\n',
                                    style: TextStyle(
                                        fontSize: 35.5,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 100, vertical: 60),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: TextButton.icon(
                                          style: TextButton.styleFrom(
                                            textStyle: TextStyle(),
                                            backgroundColor: Color(0XFFFBEFD9),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                          ),
                                          icon: Icon(Icons.mail_outline),
                                          label: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Drop me a line',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          onPressed: () {
                                            launchMailto();
                                          },
                                        )),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ))),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'About Me',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Hi there..!,I am P.Sai Lakshmi and welcome to my E-portfolio.I am Currently pursuing BTech(Information Technology) in Prathyusha Engineering College,TamilNadu.The purpose of this E-portfolio is to showcase my work.',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w100),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'My Projects',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: projectsList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Card(
                              elevation: 3,
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.work),
                                    title: Text(
                                        projectsList[index]['title'] ?? ''),
                                    subtitle: Text(
                                        projectsList[index]['subtitle'] ?? ''),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Image.network(
                                        projectsList[index]['image'] ?? ''),
                                  )
                                ],
                              ))
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 100,
        )
      ],
    );
  }
}
