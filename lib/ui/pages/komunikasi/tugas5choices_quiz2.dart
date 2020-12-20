part of '../pages.dart';

class Tugas5ChoicesQuiz2Kom extends StatefulWidget {
  @override
  _Tugas5ChoicesQuiz2KomState createState() => _Tugas5ChoicesQuiz2KomState();
}

class _Tugas5ChoicesQuiz2KomState extends State<Tugas5ChoicesQuiz2Kom> {
  int _rgProgramming = -1;
  String _selectedValue;
  int id;
  String nama;
  String jawaban;

  @override
  void initState() {
    super.initState();
    getId();
  }

  void getId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      id = prefs.getInt('idTugas');
      nama = prefs.getString('nama');
    });
  }

  void postPilihan() async {
    String temp =
        "Anda melihat anak anda sedang mengerjakan PR dan ia terlihat kesulitan. Saat itu, anda memposisikan diri anda sebaiknya sebagai ";
    jawaban = "Pertanyaan  :  $temp       Jawaban  :  $_selectedValue";
    var url =
        'https://timkecilproject.com/pengmas/public/api/jawaban_komunikasis';

    var data = {
      "id_tugas": id.toString(),
      "perasaan": nama,
      "jawaban": jawaban,
    };
    var response = await http.post(url, body: data);
    if (response.statusCode == 200) {
      context.bloc<PageBloc>().add(GoToTugas5ChoicesQuiz3KomPage());
      /*Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return ChoicesQuiz3Kom();
        },
      ));*/
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

  final List<RadioGroupKom2> _programmingList = [
    RadioGroupKom2(index: 1, text: "PEMIMPIN"),
    RadioGroupKom2(index: 2, text: "TEMAN"),
    RadioGroupKom2(index: 3, text: "KAKAK"),
    // RadioGroup(
    //     index: 3,
    //     text: "3. Menyiapkan materi ujian/tugas yang harus dikumpulkan besok"),
    // RadioGroup(index: 4, text: "4. Beri contoh lain.."),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Tugas5ChoicesQuizKom();
          },
        ));
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
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Tugas5ChoicesQuizKom();
                          },
                        ));
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Study Kasus:\nKedua',
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
                Center(
                  child: Text("Membantu menyelesaikan PR",
                      style: blackTextFont.copyWith(fontSize: 16),
                      textAlign: TextAlign.center),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                      "Anda melihat anak anda sedang mengerjakan PR dan ia terlihat kesulitan. Saat itu, anda memposisikan diri anda sebaiknya sebagai...",
                      style: blackTextFont.copyWith(fontSize: 16),
                      textAlign: TextAlign.center),
                ),
                SizedBox(height: 25),
                _buildRadioButton(),
                SizedBox(height: 50),
                Text("Pilihan kamu :"),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    _selectedValue == null ? "Belum memilih" : _selectedValue,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 45),
                Container(
                  width: 150,
                  height: 50,
                  margin: EdgeInsets.only(left: 80, right: 20),
                  child: RaisedButton(
                    child: Text('Lanjut',
                        style: whiteTextFont.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w400)),
                    color: mainColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {
                      /*
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ChoicesQuiz3();
                        },
                      ));*/
                      postPilihan();
                    },
                  ),
                ),
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
      children: _programmingList
          .map((programming) => RadioListTile(
                title: Text(programming.text),
                value: programming.index,
                groupValue: _rgProgramming,
                controlAffinity: ListTileControlAffinity.trailing,
                dense: true,
                onChanged: (value) {
                  setState(() {
                    _rgProgramming = value;
                    _selectedValue = programming.text;
                  });
                },
              ))
          .toList(),
    );
  }
}

class RadioGroupKom2 {
  final int index;
  final String text;
  RadioGroupKom2({this.index, this.text});
}
