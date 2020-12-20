part of '../pages.dart';

class Tugas5ChoicesKom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {},
        child: Scaffold(
            body: Stack(children: <Widget>[
          Container(color: accentColor4),
          SafeArea(
              child: Container(
            color: Color(0xFFF6F7F9),
          )),
          ListView(children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 70,
                  width: 200,
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: defaultMargin),
                  child: RaisedButton(
                    child: Text('Misi Ke Lima !',
                        style: whiteTextFont.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w400)),
                    color: accentColor2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
                SizedBox(height: 35),
                Container(
                    height: 280,
                    width: 280,
                    margin: EdgeInsets.fromLTRB(
                        defaultMargin, 25, defaultMargin, 25),
                    decoration: BoxDecoration(
                      color: accentColor1,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              defaultMargin, 30, defaultMargin, 5),
                          child: SingleChildScrollView(
                            child: Text(
                                "Bagaimana anda memposisikan diri di hadapan anak anda? Apakah menjadi...",
                                textAlign: TextAlign.justify,
                                style: whiteTextFont.copyWith(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              defaultMargin, 5, defaultMargin, 10),
                          child: SingleChildScrollView(
                            child: Text("",
                                textAlign: TextAlign.justify,
                                style: whiteTextFont.copyWith(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                          ),
                        ),
                      ],
                    )),
                SizedBox(height: 40),
                Align(
                  alignment: Alignment.topCenter,
                  child: FloatingActionButton(
                      elevation: 20,
                      backgroundColor: mainColor,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        context
                            .bloc<PageBloc>()
                            .add(GoToTugas5ChoicesQuizKomPage());
                      }),
                ),
                SizedBox(height: 100),
              ],
            ),
          ]),
        ])));
  }
}
