import 'package:flutter/material.dart';

class ResultCard extends StatefulWidget {
  const ResultCard({
    Key? key,
    required this.bmi,
    required this.result,
    required this.feedback,
  }) : super(key: key);
  final String bmi;
  final String result;
  final String feedback;

  @override
  ResultCardState createState() => ResultCardState();
}

class ResultCardState extends State<ResultCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Жыйынтык'.toUpperCase(),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: const Color(0xff1d1e33),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    widget.result,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    widget.bmi,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 65,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    widget.feedback,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 211, 56, 45),
              minimumSize: const Size(double.infinity, 50),
            ),
            child: Text(
              'Re-caculate'.toUpperCase(),
            ),
          ),
        ],
      ),
    );
  }
}
