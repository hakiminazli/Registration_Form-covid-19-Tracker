import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:register_covid19app/CONSTANTS.dart';
import 'package:register_covid19app/database/room_data.dart';
import 'package:register_covid19app/screens/power_control_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: ProfileHeader(),
          ),

          Expanded(
            flex: 3,
            child: ControlCenter(),
          ),

          Container(
            color: accentColour,
            height: MediaQuery.of(context).size.height / 16,
          )
        ],
      ),
    );
  }
}

//TOP PROFILE HEADER

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(paddingValue),
      child: Center(
        child: ListTile(
          title: Text(
            'Welcome!',
            style: TextStyle(color: Colors.grey),
          ),
          subtitle: Text(
            profileName,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 31),
          ),
          trailing: ProfileImage(
            imageLocation: 'assets/images/default.png',
          ),
        ),
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key key, this.imageLocation}) : super(key: key);

  final String imageLocation;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        imageLocation,
        fit: BoxFit.fill,
      ),
    );
  }
}


// CONTROL CENTER (BIG BLUE BUTTON)

class ControlCenter extends StatelessWidget {
  final Room room = Room();
  final double axisSpacing = 26;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.all(axisSpacing),
      itemCount: room.roomDataList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 600
              ? 4
              : 2, //layour rendered quite differently on different screen sizes
          crossAxisSpacing: axisSpacing,
          mainAxisSpacing: axisSpacing),
      itemBuilder: (BuildContext context, int index) {
        return ControlCenterItem(
            icon: room.roomDataList[index].icon,
            title: room.roomDataList[index].title,
            //numberOfDevices: room.roomDataList[index].numberOfDevices,
            isActive: room.roomDataList[index].isActive);

      },
    );
  }
}

// ignore: must_be_immutable
class ControlCenterItem extends StatefulWidget {
  ControlCenterItem(
      {@required this.icon,
      @required this.title,
      //@required this.numberOfDevices,
      @required this.isActive});

  final String title;
 // final int numberOfDevices;
  final IconData icon;
  bool isActive;

  @override
  _ControlCenterItemState createState() => _ControlCenterItemState();
}

class _ControlCenterItemState extends State<ControlCenterItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isActive = !widget.isActive;
          //toggle on / off of control center
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border:
              !widget.isActive ? Border.all(color: Colors.blue) : null,
          borderRadius: BorderRadius.circular(16),
          color: widget.isActive ? primaryColour : Colors.transparent,
        ),
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: FaIcon(
                    widget.icon,
                    semanticLabel: widget.title,
                    size: 28,
                    color: widget.isActive ? Colors.white : primaryColour,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.title,
                  style: TextStyle(
                      color: widget.isActive ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
            /*
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '${widget.numberOfDevices} device',
                  style: TextStyle(color: Colors.black.withAlpha(100)),
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}

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
