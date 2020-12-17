import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:project1/ViewControllers/HomePage.dart';
import 'package:project1/bloc/blocs.dart';
import 'package:project1/bloc/perintah_bloc.dart';
import 'package:project1/shared/shared.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:project1/models/models.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project1/ui/widgets/widgets.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../bloc/blocs.dart';
import '../../models/models.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bubble/bubble.dart';

part 'sign_in.dart';
part 'splash.dart';
part 'sign_up.dart';
part 'main/onboarding_screen.dart';
part 'main_page.dart';
part 'main/user_account.dart';
part 'main/rate.dart';
part 'main/goals.dart';
part 'pwb/bydoing.dart';
part 'main/task.dart';
// part 'modal_trigger.dart';
part 'main/product.dart';
part 'detail_product.dart';

part 'detail_tugas_komunikasi.dart';
part 'detail_tugas_mindfull.dart';
part 'detail_tugas_pwb.dart';
part 'detail_materi_pwb.dart';
part 'detail_materi_komunikasi.dart';
part 'wrapper.dart';
part 'home.dart';
part 'detailmateri.dart';
part 'main/success.dart';
part 'pwb/question_answer.dart';
part 'main/mood_only.dart';
part 'main/pop_up.dart';
part 'main/bydoing_audio.dart';
part 'main/materi_detail_task.dart';
part 'main/profile.dart';
part 'home2.dart';
part 'mindfull/sadar.dart';
part 'mindfull/mengamati.dart';
part 'mindfull/kalender.dart';
part 'mindfull/perspektif.dart';
part 'mindfull/kesimpulan.dart';
part 'mindfull/tahukah.dart';
part 'mindfull/suara.dart';
part 'mindfull/perkataan.dart';
part 'mindfull/taskmindfull.dart';
part 'mindfull/syukur.dart';
part 'komunikasi/komunikasi.dart';
part 'komunikasi/sukses.dart';
part 'komunikasi/taskkomunikasi.dart';
part 'komunikasi/study_case.dart';
part 'komunikasi/tugas5.dart';
part 'pwb/choices_quiz.dart';
part 'pwb/choices_quiz1.dart';
part 'pwb/choices_quiz2.dart';
part 'pwb/choices_quiz3.dart';
part 'pwb/question_answer_upit.dart';
part 'pwb/rate_only.dart';
part 'pwb/study_rate_only.dart';
part 'pwb/sukses_pwb.dart';
part 'pwb/sukses_pwb2.dart';
part 'pwb/taskpwb.dart';
part 'pwb/question_choices.dart';
part 'pwb/inti1.dart';
part 'pwb/inti2.dart';
part 'pwb/inti3.dart';
part 'pwb/inti4.dart';
part 'pwb/inti5.dart';
part 'pwb/inti6.dart';
part 'pwb/studychoice.dart';
part 'pwb/studychoicepart2.dart';
part 'pwb/studychoicepart3.dart';
part 'pwb/penjelasantantangan3.dart';
part 'pwb/penjelasantantangan4.dart';
part 'pwb/tantangan5.dart';
part 'pwb/tugas6.dart';
part 'pwb/tugas6.2.dart';
