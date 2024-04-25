import 'dart:io';

import 'package:flutter/material.dart';
import 'package:cat_dog_detector/style/style.dart';

class ResultPage extends StatelessWidget {
  final File image;
  final String result;
  final dynamic probability;

  const ResultPage({
    super.key,
    required this.image,
    required this.result,
    required this.probability,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Classification Result',
          style: CustomStyle.subTitle,
          textAlign: TextAlign.start,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,weight: 700,),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300.0,
                height: 300.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(198, 106, 106, 106),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.file(
                    image,
                    fit: BoxFit.cover, // Ensures the image covers the container
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Result: $result',
              style: const TextStyle(
                  fontSize: 28,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Probability: ${(probability * 100).toStringAsFixed(2)}%',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'roboto',
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(200, 72, 0, 69),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text(
                  'Back to Home',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'roboto'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
