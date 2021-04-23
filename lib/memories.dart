import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Memories extends StatefulWidget {
  Memories({Key key}) : super(key: key);

  @override
  _MemoriesState createState() => _MemoriesState();
}

class _MemoriesState extends State<Memories> {
  List _images = [
    'assets/images/memories big.svg',
    {
      'image': null,
      'text':
          'I was not too okay the other day and we were talking about the odds of sad cum reaching the eggs',
    },
    {
      'image': null,
      'text': "I was like I'd probably also give up, I don't blame the cum",
    },
    {
      'image': null,
      'text': "and you said 'But you did not though'",
    },
    {
      'image': null,
      'text':
          "It's one of my happiest memories of us, you make me so happy\n\n-Idunnuoluwa",
    },
    {
      'image': null,
      'text':
          'Okay so, I remember the first time we met...we already talked so much shit about everything and everyone there😂😂. That when you finally wanted to give someone a compliment,the only thing you could think to say was "hey your glasses really suit your face"😭😭\n\n-Doreen',
    },
    {
      'image': null,
      'text':
          "I also wondered how someone that looked so innocent,cursed like a sailor\nAlso when we got to your house you really had the nerve to say that you were not going to give me your food because you asked me in the beginning and I said I wasn't hungry😂😂.. heaven knows I love you bebe❣️\n\n-Doreen",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 32, 67, 1),
        title: Text('Memories'),
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
                        'assets/images/memories big.svg',
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
