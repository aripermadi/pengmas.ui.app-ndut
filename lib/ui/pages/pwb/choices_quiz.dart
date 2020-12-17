part of '../pages.dart';

class ChoicesQuiz extends StatefulWidget {
  Category category;

  @override
  _ChoicesQuizState createState() => _ChoicesQuizState();
}

class _ChoicesQuizState extends State<ChoicesQuiz> {
  List<String> _hasilCheck = [];
  int idTugas;
  int idUser;
  String nama;
  @override
  void initState() {
    super.initState();
    getId();
  }

  void getId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      idTugas = prefs.getInt('idTugas');
      idUser = prefs.getInt("id");
      nama = prefs.getString('nama');
    });
  }

  void postKebahagiaan() async {
    String hch = _hasilCheck.toString();
    String jwb = 'Kuadran I : $hch';
    var url =
        'https://timkecilproject.com/pengmas/public/api/jawaban_kebahagiaans';
    var data = {
      "id_tugas": idTugas.toString(),
      "id_pengguna": idUser.toString(),
      "jawaban": jwb
    };
    var response = await http.post(url, body: data);
    if (response.statusCode == 200) {
      context.bloc<PageBloc>().add(GoToChoices1Page());
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Error saat mengirim jawaban"),
            actions: <Widget>[
              FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  final List<SimpleModel> _items = <SimpleModel>[
    SimpleModel(
        'Menyiapkan materi ujian/tugas yang harus dikumpulkan besok. ', false),
    SimpleModel(
        'Melakukan hobi/kegiatan menyenangkan bersama keluarga.', false),
    SimpleModel('Belanja kudapan untuk keluarga.', false),
    SimpleModel('Melihat-lihat online shop.', false),
    SimpleModel('Menonton gossip di TV.', false),
    SimpleModel('Menyediakan kue untuk arisan/acara keluarga.', false),
    SimpleModel('Olahraga.', false),
    SimpleModel(
        'Membuat laporan kerja untuk di presentasikan di rapat keesokan harinya.',
        false),
    SimpleModel(
        'Mengantar anak ke Rumah Sakit karena pendarahan di kepala yang tidak berhenti.',
        false),
    SimpleModel('Bersih-bersih rumah.', false),
    SimpleModel('Menjawab telepon dari nomor yang tidak dikenal.', false),
    SimpleModel('Bermain games di HP.', false),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToDetailTugasPwb());
        return;
      },
      child: Scaffold(
          body: Stack(children: <Widget>[
        Container(color: accentColor4),
        SafeArea(
            child: Container(
          color: Color(0xFFF6F7F9),
        )),
        ListView(children: <Widget>[
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
                        context.bloc<PageBloc>().add(GoToDetailTugasPwb());
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Pilih 3 pilihan dari 12 pilihan\n',
                      textAlign: TextAlign.center,
                      style: blackTextFont.copyWith(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ]),
          Container(
            padding: EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Kuadran I"),
                Text(
                    "Sangat penting dan sangat mendesak(lakukan segera sendiri)"),
                SizedBox(height: 25),
                _buildRadioButton(),
                SizedBox(height: 50),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Container(
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
                        postKebahagiaan();
                      }),
                )),
              ],
            ),
          ),
        ]),
      ])),
    );
  }

  // widget radio
  Widget _buildRadioButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _items
          .map(
            (SimpleModel item) => CheckboxListTile(
                title: Text(item.title),
                value: item.isChecked,
                onChanged: (bool val) {
                  setState(() {
                    item.isChecked = val;
                    if (item.isChecked == true) {
                      _hasilCheck.add(item.title);
                    } else {
                      _hasilCheck.remove(item.title);
                    }
                  });
                }),
          )
          .toList()
            ..shuffle(),
    );
  }
}

class SimpleModel {
  String title;
  bool isChecked;
  SimpleModel(this.title, this.isChecked);
}
