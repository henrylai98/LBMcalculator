import 'package:flutter/material.dart';
import 'package:simple_calculator/InputPage.dart';
import 'constants.dart';
import 'reusableCard.dart';
import 'BottomButton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.boer,
    @required this.james,
    @required this.hume,
    @required this.peters,
    @required this.bfboer,
    @required this.bfjames,
    @required this.bfhume,
    @required this.bfpeters,
  });
  final String boer;
  final String james;
  final String hume;
  final String peters;
  final String bfboer;
  final String bfjames;
  final String bfhume;
  final String bfpeters;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LBM CALCULATOR'),
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5.0),
                  alignment: Alignment.center,
                  child: Text(
                    'Your Result :',
                    style: kTitleTextStyle,
                  ),
                ),
                Expanded(
                    child: Column(children: <Widget>[
                  Center(
                    child: ReusableCard(
                      colour: kActiveCardColour,
                      cardChild: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Table(
                              children: [
                                TableRow(children: [
                                  Text(
                                    "Formula",
                                    textScaleFactor: 1.35,
                                  ),
                                  Text("Lean Body Mass",
                                      textScaleFactor: 1.35,
                                      textAlign: TextAlign.center),
                                  Text("Body Fat",
                                      textScaleFactor: 1.35,
                                      textAlign: TextAlign.center),
                                ]),
                                TableRow(children: [
                                  Text("Peters (for children)",
                                      textScaleFactor: 1.35),
                                  Text(peters.toString(),
                                      textScaleFactor: 1.35,
                                      textAlign: TextAlign.center),
                                  Text(bfpeters.toString(),
                                      textScaleFactor: 1.35,
                                      textAlign: TextAlign.center),
                                ]),
                                TableRow(children: [
                                  Text("Boer", textScaleFactor: 1.35),
                                  Text(boer.toString(),
                                      textScaleFactor: 1.35,
                                      textAlign: TextAlign.center),
                                  Text(bfboer.toString(),
                                      textScaleFactor: 1.35,
                                      textAlign: TextAlign.center),
                                ]),
                                TableRow(children: [
                                  Text("James", textScaleFactor: 1.35),
                                  Text(james.toString(),
                                      textScaleFactor: 1.35,
                                      textAlign: TextAlign.center),
                                  Text(bfjames.toString(),
                                      textScaleFactor: 1.35,
                                      textAlign: TextAlign.center),
                                ]),
                                TableRow(children: [
                                  Text("Hume", textScaleFactor: 1.35),
                                  Text(hume.toString(),
                                      textScaleFactor: 1.35,
                                      textAlign: TextAlign.center),
                                  Text(bfhume.toString(),
                                      textScaleFactor: 1.35,
                                      textAlign: TextAlign.center),
                                ]),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ])),
                BottomButton(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => InputPage()));
                    },
                    buttonTitle: 'RE-CALCULATE')
              ],
            ),
          )
        ]));
  }
}
