part of '../pages.dart';

// ignore: must_be_immutable
class PenjelasanTantangan3Page extends StatelessWidget {
  Category category;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          context.bloc<PageBloc>().add(GoToDetailTugasPwb());

          return;
        },
        child: Scaffold(
            body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[Container(
                    margin: EdgeInsets.only(top: 20, left: 10),
                    height: 50,
                    child: Stack(
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
                      ],
                    ),
                  ),
            /*Container(
          width: 300,
          height: 300,
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/newpack/2 SCENE.png"))),
        ),*/
            Align(
              child: Text(
                "Penjelasan Tantangan",
                textAlign: TextAlign.center,
                style: blackTextFont.copyWith(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: defaultMargin, right: defaultMargin),
              child: Text(
                  " Kemampuan untuk mengelola kegiatan terkait dengan kemampuan untuk menentukan prioritas dalam hidup kita. Pada tantangan kali ini, ada beberapa kegiatan yang harus anda letakkan di kotak prioritas ",
                  textAlign: TextAlign.center,
                  style: blackTextFont.copyWith(fontSize: 16)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: defaultMargin, right: defaultMargin),
              child: Text(" Caranya :",
                  textAlign: TextAlign.justify,
                  style: blackTextFont.copyWith(fontSize: 16)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: defaultMargin, right: defaultMargin),
              child: Text("1. Bacalah kegiatan-kegiatan yang tertulis. ",
                  textAlign: TextAlign.center,
                  style: blackTextFont.copyWith(fontSize: 16)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: defaultMargin, right: defaultMargin),
              child: Text(
                  "2. Pilih kegiatan yang penting dan mendesak di kotak I, kegiatan yang penting dan tidak mendesak di kotak II, kegiatan yang mendesak tapi tidak penting dikotak III, dan kegiatan yang tidak penting dan tidak mendesak di kotak IV. ",
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
                    "Lanjut",
                    style: whiteTextFont.copyWith(fontSize: 16),
                  ),
                  onPressed: () {
                    context.bloc<PageBloc>().add(GoToChoicesPage());
                  }),
            ),
          ],
        )));
  }
}
