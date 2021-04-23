import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audioplayers/audioplayers.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _images = [
    {
      'image': 'assets/images/shit you love.svg',
      'route': '/shit you love',
    },
    {
      'image': 'assets/images/thanks.svg',
      'route': '/thanks',
    },
    {
      'image': 'assets/images/memories.svg',
      'route': '/memories',
    },
    {
      'image': 'assets/images/cringe.svg',
      'route': '/cringe',
    },
    {
      'image': 'assets/images/idunnu.svg',
      'route': '/idunnu',
    },
    {
      'image': 'assets/images/manuel.svg',
      'route': '/manuel',
    },
  ];
  
  /*AudioPlayer audioPlayer = AudioPlayer();
  _playLocal() async {
    int _music = await audioPlayer.play(
      'assets/music/Billie Eilish - ilomilo (MBNN Remix).mp3',
      isLocal: true,
    );
  }

  void initState() {
    super.initState();
    _playLocal();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 32, 67, 1),
        title: Text('Happy Birthday Favourrrr'),
      ),
      extendBody: true,
      body: Container(
        color: Color.fromRGBO(33, 33, 33, 1),
        child: Swiper(
          loop: false,
          viewportFraction: 0.45,
          duration: 1000,
          itemCount: _images.length,
          scale: 0.9,
          control: SwiperControl(),
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: SizedBox(
                child: InkWell(
                  child: SvgPicture.asset(
                    _images[index]['image'],
                    fit: BoxFit.cover,
                    height: 240,
                    width: 360,
                    
                  ),
                  /*child: Image(
                    
                    image: AssetImage(
                      _images[index]['image'],
                    ),
                    fit: BoxFit.cover,
                  ),*/
                  onTap: () => Navigator.pushNamed(
                    context,
                    _images[index]['route'],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
