part of '../pages.dart';

class Tugas6Page extends StatefulWidget {
  @override
  _Tugas6PageState createState() => _Tugas6PageState();
}

class _Tugas6PageState extends State<Tugas6Page> {
  CarouselSlider carouselSlider;
  // int _current = 0;
  void saveData(param) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("Tgs6", param);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          context.bloc<PageBloc>().add(GoToDetailTugasPwb());

          return;
        },
        child: Scaffold(
            body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  context.bloc<PageBloc>().add(GoToDetailTugasPwb());
                },
                child: Icon(Icons.arrow_back),
              ),
            ),
            Container(color: accentColor4),
            SafeArea(
              child: Container(
                color: Color(0xFFF6F7F9),
              ),
            ),
            ListView(
              children: <Widget>[
                Column(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20, left: 10),
                    height: 50,
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: () {
                              context
                                  .bloc<PageBloc>()
                                  .add(GoToDetailTugasPwb());
                            },
                            child: Icon(Icons.arrow_back),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: defaultMargin),
                      child: Text('Tantangan',
                          textAlign: TextAlign.center,
                          style: blackTextFont.copyWith(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: defaultMargin),
                      child: Text(
                        'Coba renungkan dan tuliskan apa rencana hidup Anda dimasa depan',
                        textAlign: TextAlign.left,
                        style: blackTextFont.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                ]),
                SizedBox(height: 30),
                CarouselSlider(
                  height: 250.0,

                  // enlargeCenterPage: true,
                  // autoPlay: true,
                  // initialPage: 0,
                  // pauseAutoPlayOnTouch: Duration(seconds: 10),
                  // aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  // enableInfiniteScroll: true,
                  // autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.5,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  autoPlay: false,
                  reverse: false,
                  enableInfiniteScroll: false,
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  pauseAutoPlayOnTouch: Duration(seconds: 10),
                  scrollDirection: Axis.horizontal,
                  // onPageChanged: (index) {
                  //   setState(() {
                  //     _current = index;
                  //   });
                  // },
                  items: [
                    Container(
                      margin: EdgeInsets.all(1.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.61),
                              Colors.black.withOpacity(0)
                            ]),
                        image: DecorationImage(
                          image: AssetImage('assets/images/pwb/pendek.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              saveData('Tujuan Jangka Pendek');
                              context
                                  .bloc<PageBloc>()
                                  .add(GoToInputTujuanPage());
                            },
                            child: Text('Tujuan Jangka Pendek',
                                style: whiteTextFont.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'Kurang dari 5 tahun kedepan',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.61),
                              Colors.black.withOpacity(0)
                            ]),
                        image: DecorationImage(
                          image: AssetImage('assets/images/pwb/menengah.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              saveData('Tujuan jangka menengah');
                              context
                                  .bloc<PageBloc>()
                                  .add(GoToInputTujuanPage());
                            },
                            child: Text('Tujuan jangka menengah',
                                style: whiteTextFont.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              '5 sampai 10 tahun kedepan',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.61),
                              Colors.black.withOpacity(0)
                            ]),
                        image: DecorationImage(
                          image: AssetImage('assets/images/pwb/panjang.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              saveData('Tujuan Jangka Panjang');
                              context
                                  .bloc<PageBloc>()
                                  .add(GoToInputTujuanPage());
                            },
                            child: Text('Tujuan Jangka Panjang',
                                style: whiteTextFont.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'Lebih dari 10 tahun',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     OutlineButton(
                //       onPressed: goToPrevious,
                //       child: Text("<"),
                //     ),
                //     OutlineButton(
                //       onPressed: goToNext,
                //       child: Text(">"),
                //     ),
                //   ],
                // ),
              ],
            )
          ],
        )));
  }

  // goToPrevious() {
  //   carouselSlider.previousPage(
  //       duration: Duration(milliseconds: 300), curve: Curves.ease);
  // }

  // goToNext() {
  //   carouselSlider.nextPage(
  //       duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  // }

}
