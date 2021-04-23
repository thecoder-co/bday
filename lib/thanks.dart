import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Thanks extends StatefulWidget {
  Thanks({Key key}) : super(key: key);

  @override
  _ThanksState createState() => _ThanksState();
}

class _ThanksState extends State<Thanks> {
  List _images = [
    'assets/images/thanks big.svg',
    {
      'image': AssetImage('assets/images/thanks 1.png'),
      'text':
          "You're my literal therapist already🥺, I'll let thee-rape me👉👈...\nMe and bad puns omg😂😭",
    },
    {
      'image': null,
      'text':
          "Thank you for being there for me, thank you for loving me, thank you for noticing me\n\nHappy birthday🌝\n\n-David",
    },
    {
      'image': null,
      'text':
          "You're a great listener and  we can talk about anything and make jokes on how sad we think life is, You're also a sweetheart.\n\n-Doreen",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 32, 67, 1),
        title: Text('Thanksss'),
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
                        'assets/images/thanks big.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              : _images[index]['image'] != null
                  ? Padding(
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
                                    color: Color.fromRGBO(30, 32, 67, 1),
                                    child: Image(
                                      image: _images[index]['image'],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ]
                            : [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                      color: Color.fromRGBO(30, 32, 67, 1),
                                      child: Image(
                                        image: _images[index]['image'],
                                        fit: BoxFit.cover,
                                      )),
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
                    )
                  : Padding(
                      padding: EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Color.fromRGBO(30, 32, 67, 1),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                _images[index]['text'],
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
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
