part of '../pages.dart';

class SukseskomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(color: accentColor4),
      SafeArea(
          child: Container(
        color: Colors.white,
      )),
      ListView(children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              height: 300,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/selamat.png"))),
            ),
            Align(
              child: Text(
                "Hore!!!",
                textAlign: TextAlign.center,
                style: blackTextFont.copyWith(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: defaultMargin, right: defaultMargin),
              child: Text(
                  "Hore! Anda berhasil menyelesaikan misi! \nAnda maju selangkah menuju orang tua yang hebat!",
                  textAlign: TextAlign.center,
                  style: blackTextFont.copyWith(fontSize: 16)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 45,
              width: 250,
              margin: EdgeInsets.only(top: 30, bottom: 20),
              child: RaisedButton(
                  elevation: 0,
                  color: mainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    "Beranda",
                    style: whiteTextFont.copyWith(fontSize: 16),
                  ),
                  onPressed: () {
                    context.bloc<PageBloc>().add(GoToMainPage());
                  }),
            ),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Lanjut Nugas? ",
                  style: greyTextFont.copyWith(fontWeight: FontWeight.w400),
                ),
                GestureDetector(
                  onTap: () {
                    context.bloc<PageBloc>().add(GoToMainPage());
                  },
                  child: Text(
                    "Kembali ke Beranda",
                    style: purpleTextFont,
                  ),
                )
              ],
            ),*/
          ],
        ),
      ])
    ]));
  }
}
