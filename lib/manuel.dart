import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Manuel extends StatefulWidget {
  Manuel({Key key}) : super(key: key);

  @override
  _ManuelState createState() => _ManuelState();
}

class _ManuelState extends State<Manuel> {
  List _images = [
    'assets/images/manuel big.svg',
    {
      'image': AssetImage('assets/images/manuel 1.jpg'),
      'text': "DON'T FORGET.\nYOU'RE So hot\nwtf pin me down",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 32, 67, 1),
        title: Text("Manuel's"),
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
                        'assets/images/manuel big.svg',
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
