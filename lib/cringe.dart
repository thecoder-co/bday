import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cringe extends StatefulWidget {
  Cringe({Key key}) : super(key: key);

  @override
  _CringeState createState() => _CringeState();
}

class _CringeState extends State<Cringe> {
  List _images = [
    'assets/images/cringe big.svg',
    {
      'image': AssetImage('assets/images/cringe 1.jpg'),
      'text': "You're my honeybunch 🥰🥰",
    },
    {
      'image': AssetImage('assets/images/cringe 2.jpg'),
      'text': "Sugarplum 😋❤",
    },
    {
      'image': AssetImage('assets/images/cringe 3.png'),
      'text': "Pumpy-umpy-umpkin🥺",
    },
    {
      'image': AssetImage('assets/images/cringe 4.jpg'),
      'text': "You're my sweetie pie",
    },
    {
      'image': AssetImage('assets/images/cringe 5.png'),
      'text': "You're  my cuppy cake",
    },
    {
      'image': AssetImage('assets/images/cringe 6.png'),
      'text': "Gumdrops",
    },
    {
      'image': AssetImage('assets/images/cringe 7.jpg'),
      'text': "Snoogums-Boogums",
    },
    {
      'image': AssetImage('assets/images/cringe 8.jpg'),
      'text': "You're the apple of my eye",
    },
    {
      'image': AssetImage('assets/images/cringe 9.jpg'),
      'text':
          "And I love you so and I want you to know\nThat I'll always be right here\nAnd I love to sing sweet songs to you\nBecause you are so dear",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 186, 90, 135),
        title: Text('Cringe Journey'),
      ),
      body: Container(
        color: Color.fromRGBO(241, 205, 214, 1),
        child: Swiper(
          itemCount: _images.length,
          autoplayDisableOnInteraction: true,
          duration: 1000,
          autoplay: true,
          loop: false,
          viewportFraction: 0.8,
          scale: 0.9,
          control: SwiperControl(
            color: Color.fromARGB(255, 186, 90, 135),
          ),
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => index == 0
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: SvgPicture.asset(
                        'assets/images/cringe big.svg',
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
                                      fontSize: 30,
                                      color: Color.fromARGB(255, 186, 90, 135),
                                    ),
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
                                      fontSize: 30,
                                      color: Color.fromARGB(255, 186, 90, 135),
                                    ),
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
