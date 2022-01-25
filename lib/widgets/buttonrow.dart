
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: Color(0XFFFBEFD9),
          child: Row(
            children: [
              TextButton.icon(
                  onPressed: () {
                    launch('https://www.facebook.com/profile.php?id=100045447142445');
                  },
                  icon: Image.asset('assets/images/social/facebook.png',
                      height: 15, width: 15),
                  label: Text('')),
              TextButton.icon(
                  onPressed: () {
                    launch('https://instagram.com/sai_lakshmi_2809');
                  },
                  icon: Image.asset('assets/images/social/instagram.png',
                      height: 15, width: 15),
                  label: Text('')),
              TextButton.icon(
                  onPressed: () {
                    launch('https://twitter.com/5028L?t=8kTTK-PYqMc0zbPh8D1Vwg&s=08');
                  },
                  icon: Image.asset('assets/images/social/twitter.png',
                      height: 15, width: 15),
                  label: Text(''))
            ],
          ),
        )
      ],
    );
  }
  void _launchURL(String url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}
}
