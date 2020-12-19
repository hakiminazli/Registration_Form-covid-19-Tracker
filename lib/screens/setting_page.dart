import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:register_covid19app/CONSTANTS.dart';
import 'package:register_covid19app/Utils/launch_url_util.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView(
                children: [
                  tapCard(
                    () {
                      LaunchUrlUtil.launchUrl('https://gum.co/SxEWQ');
                    },
                    ListTile(
                      leading:
                          FaIcon(FontAwesomeIcons.code, color: Colors.black),
                      title: Text(
                        'Get the source code',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Name your own price @ gum.co/SxEWQ'),
                    ),
                  ),
                  tapCard(
                    () {
                      LaunchUrlUtil.launchUrl('https://twitter.com/iqfareez2');
                    },
                    ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Color(0xFF1DA1F2),
                      ),
                      title: Text(
                        'Follow me',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('https://twitter.com/hakimin_azli'),
                    ),
                  ),
                  tapCard(
                    () {
                      LaunchUrlUtil.launchUrl(
                          'https://gumroad.com/iqfareez');
                    },
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.codeBranch,
                          color: Color(0xFFEA4c89)),
                      title: Text(
                        'Inspiration',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle:
                          Text('https://gumroad.com/iqfareez'),

                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('images/undraw_source_code_xx2e.svg'),
              ),
            )
          ]),
    );
  }
}

Widget tapCard(Function _onTap, Widget _child) {
  return Card(
    child: InkWell(
      splashColor: accentColour.withAlpha(30),
      onTap: _onTap,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: _child,
      ),
    ),
  );
}
