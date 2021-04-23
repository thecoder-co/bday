import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShitYouLove extends StatefulWidget {
  ShitYouLove({Key key}) : super(key: key);

  @override
  _ShitYouLoveState createState() => _ShitYouLoveState();
}

class _ShitYouLoveState extends State<ShitYouLove> {
  List _images = [
    'assets/images/shit you love big.svg',
    {
      'image': AssetImage('assets/images/shit you love 1.jpg'),
      'text': 'A really warm sunset...really warm',
    },
    {
      'image': AssetImage('assets/images/shit you love 2.jpeg'),
      'text': 'Choke me....',
    },
    {
      'image': AssetImage('assets/images/shit you love 3.jpg'),
      'text': 'Purple eyes would look good on you💜💜💜',
    },
    {
      'image': AssetImage('assets/images/shit you love 4.jpg'),
      'text': "Let's go crazy on normies😋🤩",
    },
    {
      'image': AssetImage('assets/images/shit you love 5.jpg'),
      'text': "I thought of you when I saw this",
    },
    {
      'image': AssetImage('assets/images/shit you love 6.jpg'),
      'text': "Sing me to sleep",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 32, 67, 1),
        title: Text('Shit you love'),
      ),
      body: Container(
        color: Color.fromRGBO(33, 33, 33, 1),
        child: Swiper(
          itemCount: _images.length,
          autoplayDisableOnInteraction: true,
          duration: 1000,
          autoplay: true,
          pagination: SwiperPagination(alignment: Alignment.bottomCenter),
          loop: false,
          viewportFraction: 0.8,
          scale: 0.9,
          control: SwiperControl(),
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => index == 0
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: SvgPicture.asset(
                        'assets/images/shit you love big.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: index % 2 == 0
                        ? [
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                    _images[index]['text'],
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                child: Image(
                                  image: _images[index]['image'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Spacer(),
                          ]
                        : [
                            Spacer(),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                child: Image(
                                  image: _images[index]['image'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Flexible(
                                  child: Text(
                                    _images[index]['text'],
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                          ],
                  ),
                ),
        ),
      ),
    );
  }
}
