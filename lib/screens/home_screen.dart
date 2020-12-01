import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {

  static const routeName = '/home';

  final VoidCallback logo1;
  final VoidCallback logo2;
  final VoidCallback logo3;
  HomeScreen({
    Key key,
    this.logo1,
    this.logo2,
    this.logo3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(14.0, 13.0),
            child:
            // Adobe XD layer: 'c19' (shape)
            Container(
              width: 75.0,
              height: 75.0,
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                image: DecorationImage(
                  image: const AssetImage('assets/images/logo.png'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 8.0, color: const Color(0xff507251)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(280.0, 162.0),
            child:
            // Adobe XD layer: 'covid_vaccine_stock…' (shape)
            Container(
              width: 105.0,
              height: 61.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/img1.jpg'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(4, 4),
                    blurRadius: 12,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(280.0, 277.0),
            child:
            // Adobe XD layer: 'SA_1' (shape)
            Container(
              width: 105.0,
              height: 61.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/img2.jpg'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(4, 4),
                    blurRadius: 12,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(280.0, 383.0),
            child:
            // Adobe XD layer: 'dailykes' (shape)
            Container(
              width: 105.0,
              height: 61.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/img3.jpg'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(4, 4),
                    blurRadius: 12,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(280.0, 491.0),
            child:
            // Adobe XD layer: 'drhisham' (shape)
            Container(
              width: 105.0,
              height: 61.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/img4.jpg'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(4, 4),
                    blurRadius: 12,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 710.0),
            child: SvgPicture.string(
              _svg_2whuzr,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(18.0, 716.0),
            child: GestureDetector(
              onTap: () => logo1?.call(),
              child: SizedBox(
                width: 38.0,
                height: 37.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.1, 38.0, 36.8),
                      size: Size(38.0, 37.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                      // Adobe XD layer: 'house-black-silhoue…' (group)
                      Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 38.0, 36.8),
                            size: Size(38.0, 36.8),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: SvgPicture.string(
                              _svg_9ko3k7,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 38.0, 37.0),
                      size: Size(38.0, 37.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(337.0, 716.0),
            child: SizedBox(
              width: 38.0,
              height: 37.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(3.6, 0.0, 30.9, 37.0),
                    size: Size(38.0, 37.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                    // Adobe XD layer: 'user (1)' (group)
                    Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.3, 0.0, 17.8, 17.8),
                          size: Size(30.9, 37.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_30pqh8,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 17.9, 30.9, 19.1),
                          size: Size(30.9, 37.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_eaivrd,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 38.0, 37.0),
                    size: Size(38.0, 37.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(128.0, 716.0),
            child: GestureDetector(
              onTap: () => logo2?.call(),
              child: SizedBox(
                width: 38.0,
                height: 37.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(-0.5, 0.0, 37.0, 37.0),
                      size: Size(38.0, 37.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                      // Adobe XD layer: 'edit' (group)
                      Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(6.2, 0.0, 13.9, 9.2),
                            size: Size(37.0, 37.0),
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_5zdxqr,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 4.6, 26.2, 27.7),
                            size: Size(37.0, 37.0),
                            pinLeft: true,
                            pinTop: true,
                            pinBottom: true,
                            fixedWidth: true,
                            child: SvgPicture.string(
                              _svg_7gru4w,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(18.2, 18.0, 18.8, 19.0),
                            size: Size(37.0, 37.0),
                            pinRight: true,
                            pinBottom: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_a80got,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 38.0, 37.0),
                      size: Size(38.0, 37.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(242.0, 716.0),
            child: GestureDetector(
              onTap: () => logo3?.call(),
              child: SizedBox(
                width: 38.0,
                height: 37.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(3.6, 0.0, 30.8, 37.0),
                      size: Size(38.0, 37.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                      // Adobe XD layer: 'notification' (group)
                      Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 30.8, 32.4),
                            size: Size(30.8, 37.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 30.8, 32.4),
                                  size: Size(30.8, 32.4),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: Stack(
                                    children: <Widget>[
                                      Pinned.fromSize(
                                        bounds:
                                        Rect.fromLTWH(0.0, 0.0, 30.8, 32.4),
                                        size: Size(30.8, 32.4),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinTop: true,
                                        pinBottom: true,
                                        child: SvgPicture.string(
                                          _svg_vhjusp,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(10.6, 33.9, 9.7, 3.1),
                            size: Size(30.8, 37.0),
                            pinBottom: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 9.7, 3.1),
                                  size: Size(9.7, 3.1),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: Stack(
                                    children: <Widget>[
                                      Pinned.fromSize(
                                        bounds:
                                        Rect.fromLTWH(0.0, 0.0, 9.7, 3.1),
                                        size: Size(9.7, 3.1),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinTop: true,
                                        pinBottom: true,
                                        child: SvgPicture.string(
                                          _svg_o5rrom,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 38.0, 37.0),
                      size: Size(38.0, 37.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(101.0, 39.0),
            child: Text(
              'COVID-19 TRACKER',
              style: TextStyle(
                fontFamily: 'Rockwell',
                fontSize: 27,
                color: const Color(0xff000000),
                shadows: [
                  Shadow(
                    color: const Color(0x29000000),
                    offset: Offset(4, 10),
                    blurRadius: 10,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 93.0),
            child: Container(
              width: 409.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: const Color(0xff1e90ff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(10, 10),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(65.0, 111.0),
            child: Text(
              'NEWS',
              style: TextStyle(
                fontFamily: 'Rockwell',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(280.0, 111.0),
            child: Text(
              'MY STATUS',
              style: TextStyle(
                fontFamily: 'Rockwell',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(-0.5, 140.5),
            child: SvgPicture.string(
              _svg_nr6dak,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(280.0, 604.0),
            child:
            // Adobe XD layer: 'feature_frontliner_…' (shape)
            Container(
              width: 105.0,
              height: 61.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/img5.jpg'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(4, 4),
                    blurRadius: 12,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(14.0, 170.0),
            child: Text(
              'Malaysia Only Has One Shot to\nEnd Covid-19 | CodeBlue',
              style: TextStyle(
                fontFamily: 'Rockwell',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(14.0, 280.0),
            child: Text(
              'Selangor considering temporary lockdown ',
              style: TextStyle(
                fontFamily: 'Rockwell',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(14.0, 387.0),
            child: Text(
              'UPDATED: 1212 new cases ',
              style: TextStyle(
                fontFamily: 'Rockwell',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 491.0),
            child: Text(
              'Dr Noor Hisham: Country\'s infectivity\nrate at 1 [NSTTV]',
              style: TextStyle(
                fontFamily: 'Rockwell',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(15.0, 604.0),
            child: Text(
              'RM300 one-off payment for all \nfrontliners',
              style: TextStyle(
                fontFamily: 'Rockwell',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(12.0, 219.0),
            child: Text(
              '10 hours ago',
              style: TextStyle(
                fontFamily: 'Rockwell',
                fontSize: 7,
                color: const Color(0xff344e4e),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(12.0, 324.0),
            child: Text(
              'Yesterday',
              style: TextStyle(
                fontFamily: 'Rockwell',
                fontSize: 7,
                color: const Color(0xff344e4e),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(15.0, 428.0),
            child: Text(
              '2 days ago',
              style: TextStyle(
                fontFamily: 'Rockwell',
                fontSize: 7,
                color: const Color(0xff344e4e),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(15.0, 541.0),
            child: Text(
              '17 hours ago',
              style: TextStyle(
                fontFamily: 'Rockwell',
                fontSize: 7,
                color: const Color(0xff344e4e),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(18.0, 659.0),
            child: Text(
              '3 days ago',
              style: TextStyle(
                fontFamily: 'Rockwell',
                fontSize: 7,
                color: const Color(0xff344e4e),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_9ko3k7 =
    '<svg viewBox="0.0 0.6 38.0 36.8" ><path  d="M 37.52389144897461 18.55496025085449 C 38.21273040771484 17.79737281799316 38.14620971679688 16.63621520996094 37.37537002563477 15.96211528778076 L 20.39269256591797 1.102193832397461 C 19.62185096740723 0.4280941486358643 18.38600158691406 0.4422152936458588 17.63138771057129 1.134028434753418 L 0.5909830331802368 16.75438690185547 C -0.1636320799589157 17.44620132446289 -0.200669139623642 18.60586929321289 0.5089811682701111 19.34351539611816 L 0.9362082481384277 19.78845596313477 C 1.644991517066956 20.52610015869141 2.790663719177246 20.61404609680176 3.49350118637085 19.98429298400879 L 4.767007350921631 18.84382247924805 L 4.767007350921631 35.54048919677734 C 4.767007350921631 36.56489181518555 5.59705924987793 37.39419937133789 6.620719432830811 37.39419937133789 L 13.26311588287354 37.39419937133789 C 14.28677558898926 37.39419937133789 15.1168270111084 36.56489181518555 15.1168270111084 35.54048919677734 L 15.1168270111084 23.85956192016602 L 23.58927726745605 23.85956192016602 L 23.58927726745605 35.54048919677734 C 23.57453727722168 36.56414794921875 24.30698013305664 37.39345932006836 25.33064079284668 37.39345932006836 L 32.36991500854492 37.39345932006836 C 33.39357376098633 37.39345932006836 34.22362518310547 36.56414794921875 34.22362518310547 35.53974533081055 L 34.22362518310547 19.07892990112305 C 34.22362518310547 19.07892990112305 34.57541656494141 19.38711738586426 35.00933074951172 19.76851272583008 C 35.4425048828125 20.1491641998291 36.35232925415039 19.84394836425781 37.04116439819336 19.08561897277832 L 37.52389144897461 18.55496025085449 Z" fill="#010002" stroke="none" stroke-width="0.12386984378099442" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2whuzr =
    '<svg viewBox="0.0 710.0 409.0 50.0" ><defs><filter id="shadow"><feDropShadow dx="10" dy="10" stdDeviation="10"/></filter></defs><path transform="translate(0.0, 710.0)" d="M 0 0 L 409 0 L 409 50 L 0 50 L 0 0 Z" fill="#1e90ff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_30pqh8 =
    '<svg viewBox="6.3 0.0 17.8 17.8" ><path  d="M 15.2011137008667 17.82296371459961 C 17.649658203125 17.82296371459961 19.76991081237793 16.94477653503418 21.50229263305664 15.21210479736328 C 23.23468208312988 13.47971439361572 24.11287117004395 11.36003303527832 24.11287117004395 8.91120719909668 C 24.11287117004395 6.463225841522217 23.23468208312988 4.343263626098633 21.50201034545898 2.610309600830078 C 19.76933860778809 0.878201425075531 17.64937591552734 1.37834786073654e-05 15.20111274719238 1.37834786073654e-05 C 12.75228595733643 1.37834786073654e-05 10.63259887695313 0.8782012462615967 8.900215148925781 2.610591411590576 C 7.167832374572754 4.342981815338135 6.289356231689453 6.462944030761719 6.289356231689453 8.91120719909668 C 6.289356231689453 11.36003303527832 7.167832374572754 13.48000335693359 8.900497436523438 15.21238708496094 C 10.63316917419434 16.94449424743652 12.75313186645508 17.82296371459961 15.20111274719238 17.82296371459961 Z M 15.2011137008667 17.82296371459961" fill="#000000" stroke="none" stroke-width="0.0722651258111" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_eaivrd =
    '<svg viewBox="0.0 17.9 30.9 19.1" ><path  d="M 30.79426574707031 28.45099639892578 C 30.74430084228516 27.73003959655762 30.64324188232422 26.94359016418457 30.49447822570801 26.11310577392578 C 30.34430313110352 25.27641296386719 30.15093612670898 24.48544883728027 29.91946220397949 23.76251411437988 C 29.68036651611328 23.01530647277832 29.35517311096191 22.27740859985352 28.95319938659668 21.57028579711914 C 28.53598022460938 20.83633995056152 28.04593276977539 20.1972484588623 27.49603843688965 19.67135238647461 C 26.92102241516113 19.12117767333984 26.21700477600098 18.67883491516113 25.40289115905762 18.35618591308594 C 24.59160041809082 18.03522682189941 23.6925220489502 17.87263107299805 22.73077392578125 17.87263107299805 C 22.35307502746582 17.87263107299805 21.98779296875 18.0276050567627 21.28236389160156 18.48688316345215 C 20.84820938110352 18.77001762390137 20.34037399291992 19.09746932983398 19.7735481262207 19.45963668823242 C 19.28886222839355 19.76845741271973 18.63226509094238 20.05780029296875 17.82126235961914 20.31975936889648 C 17.03001594543457 20.57579231262207 16.22663116455078 20.70564270019531 15.43368816375732 20.70564270019531 C 14.64074420928955 20.70564270019531 13.837646484375 20.57579231262207 13.0455493927002 20.31975936889648 C 12.23539161682129 20.05808067321777 11.57879066467285 19.76873779296875 11.09467315673828 19.45991897583008 C 10.53320693969727 19.10113334655762 10.02509117126465 18.77368354797363 9.584446907043457 18.48659515380859 C 8.879861831665039 18.02731704711914 8.514301300048828 17.87234115600586 8.136600494384766 17.87234115600586 C 7.17457103729248 17.87234115600586 6.275773525238037 18.03521919250488 5.464763641357422 18.35646057128906 C 4.651217460632324 18.67854881286621 3.946913957595825 19.12088966369629 3.371329545974731 19.67162895202637 C 2.821719408035278 20.19780921936035 2.331391096115112 20.83662223815918 1.914731979370117 21.57028007507324 C 1.513039827346802 22.27740478515625 1.187845826148987 23.01501846313477 0.9484677314758301 23.76279067993164 C 0.7172756791114807 24.4857234954834 0.5239101052284241 25.27640533447266 0.373733788728714 26.11309814453125 C 0.2249695360660553 26.94245529174805 0.1239110827445984 27.72918510437012 0.0739462599158287 28.45183753967285 C 0.02482852526009083 29.15980911254883 -1.275833255931502e-05 29.89459609985352 -1.275833255931502e-05 30.6367301940918 C -1.275833255931502e-05 32.56813049316406 0.6139582395553589 34.13171005249023 1.824681639671326 35.28484725952148 C 3.020445346832275 36.4227409362793 4.602654457092285 37.00001525878906 6.526713371276855 37.00001525878906 L 24.34230804443359 37.00001525878906 C 26.26636695861816 37.00001525878906 27.8480110168457 36.42302322387695 29.04405784606934 35.28484344482422 C 30.25506210327148 34.13255310058594 30.86903381347656 32.56869506835938 30.86903381347656 30.63644790649414 C 30.86875152587891 29.89093208312988 30.8436279296875 29.15557670593262 30.79422760009766 28.45099258422852 Z M 30.79426574707031 28.45099639892578" fill="#000000" stroke="none" stroke-width="0.0722651258111" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5zdxqr =
    '<svg viewBox="6.2 0.0 13.9 9.2" ><path  d="M 18.88541412353516 3.083332777023315 L 17.18957901000977 3.083332777023315 C 16.68083000183105 1.310416460037231 15.04666328430176 0 13.10416412353516 0 C 11.16166591644287 0 9.527499198913574 1.310416460037231 9.01874828338623 3.083332777023315 L 7.322915554046631 3.083332777023315 C 6.690832138061523 3.083332777023315 6.166665554046631 3.607499122619629 6.166665554046631 4.239582538604736 L 6.166665554046631 6.552082061767578 C 6.166665554046631 8.032081604003906 7.384582042694092 9.249998092651367 8.864582061767578 9.249998092651367 L 17.34374618530273 9.249998092651367 C 18.82374572753906 9.249998092651367 20.04166221618652 8.032081604003906 20.04166221618652 6.552082061767578 L 20.04166221618652 4.239582538604736 C 20.04166221618652 3.607499122619629 19.51749610900879 3.083332777023315 18.88541412353516 3.083332777023315 Z" fill="#000000" stroke="none" stroke-width="1.5416663885116577" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7gru4w =
    '<svg viewBox="0.0 4.6 26.2 27.7" ><path  d="M 21.96874618530273 4.624999046325684 L 21.58333015441895 4.624999046325684 L 21.58333015441895 6.552082061767578 C 21.58333015441895 8.895415306091309 19.68708038330078 10.79166507720947 17.34374618530273 10.79166507720947 L 8.864582061767578 10.79166507720947 C 6.521248817443848 10.79166507720947 4.624999046325684 8.895415306091309 4.624999046325684 6.552082061767578 L 4.624999046325684 4.624999046325684 L 4.239582538604736 4.624999046325684 C 1.896249651908875 4.624999046325684 0 6.521248817443848 0 8.864582061767578 L 0 28.13541221618652 C 0 30.47874450683594 1.896249651908875 32.37499237060547 4.239582538604736 32.37499237060547 L 15.61708068847656 32.37499237060547 L 15.95624732971191 30.47874450683594 C 16.11041450500488 29.61541366577148 16.5112476348877 28.84457969665527 17.12791442871094 28.21249580383301 L 18.36124801635742 26.97916412353516 L 5.781250476837158 26.97916412353516 C 5.149167060852051 26.97916412353516 4.625000476837158 26.45499801635742 4.625000476837158 25.82291412353516 C 4.625000476837158 25.19083213806152 5.149167060852051 24.66666603088379 5.781250476837158 24.66666603088379 L 20.42708206176758 24.66666603088379 C 20.50416564941406 24.66666603088379 20.56583213806152 24.66666603088379 20.64291572570801 24.6974983215332 L 20.65833282470703 24.6974983215332 L 26.20833206176758 19.14749908447266 L 26.20833206176758 8.864584922790527 C 26.20833206176758 6.521251678466797 24.31208229064941 4.625001907348633 21.96874809265137 4.625001907348633 Z M 20.42708015441895 21.96874618530273 L 5.781249046325684 21.96874618530273 C 5.149165630340576 21.96874618530273 4.624999046325684 21.444580078125 4.624999046325684 20.81249618530273 C 4.624999046325684 20.1804141998291 5.149165630340576 19.65624618530273 5.781249046325684 19.65624618530273 L 20.42708015441895 19.65624618530273 C 21.05916213989258 19.65624618530273 21.58333015441895 20.1804141998291 21.58333015441895 20.81249618530273 C 21.58333015441895 21.444580078125 21.05916213989258 21.96874618530273 20.42708015441895 21.96874618530273 Z M 20.42708015441895 16.95833015441895 L 5.781249046325684 16.95833015441895 C 5.149165630340576 16.95833015441895 4.624999046325684 16.43416404724121 4.624999046325684 15.80208015441895 C 4.624999046325684 15.169997215271 5.149165630340576 14.64583110809326 5.781249046325684 14.64583110809326 L 20.42708015441895 14.64583110809326 C 21.05916213989258 14.64583110809326 21.58333015441895 15.169997215271 21.58333015441895 15.80208015441895 C 21.58333015441895 16.43416404724121 21.05916213989258 16.95833015441895 20.42708015441895 16.95833015441895 Z" fill="#000000" stroke="none" stroke-width="1.5416663885116577" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a80got =
    '<svg viewBox="18.2 18.0 18.8 19.0" ><path  d="M 19.31245613098145 36.99999237060547 C 19.00874710083008 36.99999237060547 18.71274757385254 36.87974548339844 18.4953727722168 36.66082763671875 C 18.22866439819336 36.39411926269531 18.10841369628906 36.01486968994141 18.17470550537109 35.64178848266602 L 18.99178886413574 31.00908088684082 C 19.0318717956543 30.77629089355469 19.14595603942871 30.56045532226563 19.31245613098145 30.39241600036621 L 30.75932693481445 18.94708442687988 C 32.16532897949219 17.53800201416016 33.54666137695313 17.91879272460938 34.30207824707031 18.67420959472656 L 36.2091178894043 20.58124923706055 C 37.26207733154297 21.63266563415527 37.26207733154297 23.34391593933105 36.2091178894043 24.39687538146973 L 24.76224517822266 35.84375 C 24.59574699401855 36.01179122924805 24.37991333007813 36.12433242797852 24.14558029174805 36.1644172668457 L 19.51287269592285 36.98149871826172 C 19.44658088684082 36.99383163452148 19.37874794006348 37 19.31245613098145 37 Z M 23.94516372680664 35.02666091918945 L 23.96058082580566 35.02666091918945 Z" fill="#000000" stroke="none" stroke-width="1.5416663885116577" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vhjusp =
    '<svg viewBox="3.1 0.0 30.8 32.4" ><path  d="M 33.80672836303711 31.20798301696777 L 31.15970993041992 26.79573249816895 C 29.93719291687012 24.75921630859375 29.29121017456055 22.4266242980957 29.29121017456055 20.0524845123291 L 29.29121017456055 16.1875 C 29.29121017456055 11.30812549591064 26.03521156311035 7.181107521057129 21.58285331726074 5.850625514984131 L 21.58285331726074 3.083357334136963 C 21.58285140991211 1.382874965667725 20.19997596740723 0 18.4994945526123 0 C 16.79901123046875 0 15.41613578796387 1.382874965667725 15.41613578796387 3.083357334136963 L 15.41613578796387 5.850625038146973 C 10.96385192871094 7.181107521057129 7.707851886749268 11.30812454223633 7.707851886749268 16.1875 L 7.707851886749268 20.05248260498047 C 7.707851886749268 22.4266242980957 7.061869144439697 24.75762557983398 5.840869426727295 26.79421424865723 L 3.193851709365845 31.20646476745605 C 3.050476789474487 31.4454460144043 3.047369241714478 31.74144554138184 3.184601783752441 31.98346519470215 C 3.321834087371826 32.22548294067383 3.576209306716919 32.37507247924805 3.85370922088623 32.37507247924805 L 33.14535140991211 32.37507247924805 C 33.4228515625 32.37507247924805 33.67874526977539 32.22555541992188 33.81597518920898 31.98505401611328 C 33.95320892333984 31.74448204040527 33.94858169555664 31.44537353515625 33.80672836303711 31.20798301696777 Z" fill="#000000" stroke="none" stroke-width="0.072265625" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_o5rrom =
    '<svg viewBox="13.6 33.9 9.7 3.1" ><path  d="M 13.64483451843262 33.91664123535156 C 14.51433372497559 35.73274993896484 16.35508346557617 37 18.4994945526123 37 C 20.6439037322998 37 22.48472595214844 35.73274993896484 23.35422706604004 33.91664123535156 L 13.64483451843262 33.91664123535156 Z" fill="#000000" stroke="none" stroke-width="0.072265625" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nr6dak =
    '<svg viewBox="-0.5 140.5 394.0 437.0" ><path transform="translate(-0.5, 140.5)" d="M 0 0 L 201 0" fill="none" stroke="#707070" stroke-width="5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(15.5, 249.5)" d="M 0 1 L 378 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(15.5, 359.5)" d="M 0 1 L 378 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(15.5, 463.5)" d="M 0 1 L 378 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(12.5, 576.5)" d="M 0 1 L 378 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

