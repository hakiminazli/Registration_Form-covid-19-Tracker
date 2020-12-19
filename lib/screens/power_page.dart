import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:register_covid19app/CONSTANTS.dart';
import 'package:register_covid19app/database/room_data.dart';
import 'package:register_covid19app/screens/power_control_page.dart';

class PowerPage extends StatelessWidget {
  final Room room = Room();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: room.roomDataList.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: InkWell(
            splashColor: primaryColour.withAlpha(45),
            highlightColor: primaryColour.withAlpha(22),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return PowerControl(room.roomDataList[index].title);
                }),
              );
            },
            child: ListTile(
              leading: FaIcon(
                room.roomDataList[index].icon,
                color: accentColour,
              ),
              title: Text(room.roomDataList[index].title),
            ),
          ),
        );
      },
    );
  }
}
