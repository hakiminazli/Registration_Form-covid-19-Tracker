import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register_covid19app/screens/listitem.dart';
import 'package:register_covid19app/screens/listwidget.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> with SingleTickerProviderStateMixin{
  List<ListItem> listTitles = [
    ListItem(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEppIyOLWbHjPtV1gHD_wfIOnzP6ebzFF6tg&usqp=CAU",
        "The reality of the current coronavirus surge"),
    ListItem(
        "https://cna-sg-res.cloudinary.com/image/upload/q_auto,f_auto/image/12815242/16x9/220/124/65558ce5fdc23292e1bdcc5a18d9ffe8/rY/johor-skyline.jpg",
        "13 hotels in johor cease operations amid COVID-19 pandemic"),
    ListItem(
        "https://cna-sg-res.cloudinary.com/image/upload/q_auto,f_auto/image/12550450/16x9/220/124/e73bc8f452c8c962873e309d1039a1e6/wS/singapore-malaysia-causeway-mar-18--2020---6.jpg",
        "Allowing Malaysians to commute to singapore will boost both countries"),
    ListItem(
        "https://cna-sg-res.cloudinary.com/image/upload/q_auto,f_auto/image/13677428/16x9/400/225/e8a8c41a00aa38f9d0552a2f683f7e27/Ay/the-biontechpfizer-and-moderna-vaccines-have-been-developed-at-breathtaking-speed-as-part-of-an-unprecedented-effort-to-end-a-pandemic-that-has-killed-more-than-1-4-million-people-worldwide-1606829052384-2.jpg",
        "WHO to make decisions on Pfizers, Morderna, AstraZEneca Covid-19 vaccines in weeks "),
    ListItem(
        "https://cna-sg-res.cloudinary.com/image/upload/q_auto,f_auto/image/13698034/16x9/220/124/6d6cd0ba5f6e091a463ee8e911f37da4/jf/naeem-mohammed.jpg",
        "Dont know if ill ever fly again: Pilots,aircrew in Malaysia turn entreprenuers to tide over COVID-19"),
  ];

  List<Tab> _tabList = [
    Tab(
      child: Text("Home"),
    ),
    Tab(
      child: Text("Trending"),
    ),
    Tab(
      child: Text("Popular"),
    ),
    Tab(
      child: Text("More"),
    ),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabList.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        title: Row(
          //mainAxisAlignment: MainAxisAlignment.,
          children: <Widget>[
            Text(
              "COVID-19 News",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: TabBar(
            indicatorColor: Colors.black,
            isScrollable: true,
            labelColor: Colors.black,
            controller: _tabController,
            tabs: _tabList,
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: ListView.builder(
                  itemCount: listTitles.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: listWidget(listTitles[index]),
                    );
                  }),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(),
          ),
        ],
      ),
    );
  }
}

