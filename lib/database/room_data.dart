import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoomData {
  String title;
  int numberOfDevices;
  IconData icon;
  bool isActive;

  RoomData({this.icon, this.title, this.numberOfDevices, this.isActive});
}

class Room {
  List<RoomData> roomDataList = [
    RoomData(
        icon: FontAwesomeIcons.newspaper,
        title: 'COVID-19 News',
        numberOfDevices: 1,
        isActive: true),
    RoomData(
        icon: FontAwesomeIcons.plane,
        title: 'Travel History',
        numberOfDevices: 4,
        isActive: false),
    RoomData(
        icon: FontAwesomeIcons.stethoscope,
        title: 'Check-Up',
        numberOfDevices: 2,
        isActive: false),
    RoomData(
        icon: FontAwesomeIcons.locationArrow,
        title: 'My Location',
        numberOfDevices: 3,
        isActive: false)

    //add more RoomData() if you want to. It should automoatically resize according to your time
  ];
}
