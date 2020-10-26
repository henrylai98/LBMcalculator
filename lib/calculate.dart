import 'dart:math';

import 'InputPage.dart';

class Calculator {
  Calculator({
    this.height,
    this.weight,
    this.selectedGender,
    this.selectedAge,
  });

  final double height;
  final double weight;
  final selectedGender;
  final selectedAge;
  double percentage;
  double _lbm;
  double _ecv;
  double boerpercent, jamespercent, humepercent, peterspercent;
  double bp, jp, hp, pp;

  String getBoer(selectedGender) {
    if (selectedGender == Gender.male) {
      _lbm = 0.407 * weight + 0.267 * height - 19.2;
      boerpercent = (_lbm / weight) * 100;
    } else {
      _lbm = 0.252 * weight + 0.473 * height - 48.3;
      boerpercent = (_lbm / weight) * 100;
    }
    return _lbm.toStringAsFixed(1) +
        "kg" +
        " (" +
        (" ") +
        boerpercent.toStringAsFixed(0) +
        "% )";
  }

  String getJames(selectedGender) {
    if (selectedGender == Gender.male) {
      _lbm = 1.1 * weight - 128 * pow(weight / height, 2);
      jamespercent = (_lbm / weight) * 100;
    } else {
      _lbm = 1.07 * weight - 148 * pow(weight / height, 2);
      jamespercent = (_lbm / weight) * 100;
    }
    return _lbm.toStringAsFixed(1) +
        "kg" +
        " (" +
        (" ") +
        jamespercent.toStringAsFixed(0) +
        "% )";
  }

  String getHume(selectedGender) {
    if (selectedGender == Gender.male) {
      _lbm = 0.32810 * weight + 0.33929 * height - 29.5336;
      humepercent = (_lbm / weight) * 100;
    } else {
      _lbm = 0.29569 * weight + 0.41813 * height - 43.2933;
      humepercent = (_lbm / weight) * 100;
    }
    return _lbm.toStringAsFixed(1) +
        "kg" +
        " (" +
        (" ") +
        humepercent.toStringAsFixed(0) +
        "% )";
  }

  String getPeters(selectedAge) {
    if (selectedAge == Age.child) {
      _ecv = 0.0215 * pow(weight, 0.6469) * pow(height, 0.7236);
      _lbm = 3.8 * _ecv;
      peterspercent = (_lbm / weight) * 100;

      return _lbm.toStringAsFixed(1) +
          "kg" +
          " (" +
          (" ") +
          peterspercent.toStringAsFixed(0) +
          "% )";
    } else {
      return null;
    }
  }

  String getBfBoer(bp) {
    bp = 100 - boerpercent;
    return bp.toStringAsFixed(0) + "%";
  }

  String getBfJames(jp) {
    jp = 100 - jamespercent;
    return jp.toStringAsFixed(0) + "%";
  }

  String getBfHume(hp) {
    hp = 100 - humepercent;
    return hp.toStringAsFixed(0) + "%";
  }

  String getBfPeters(selectedAge,pp) {
    if (selectedAge == Age.child) {
      pp = 100 - peterspercent;
      return pp.toStringAsFixed(0) + "%";
    } else {
      return null;
    }
  }
}
