import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {


  int age;
  int weight;
  String height;
  String gender;

  ResultScreen({required this.height, required this.weight, required this.age, required this.gender, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var bmi = (weight/(int.parse(height) * int.parse(height)) * 10000).toStringAsFixed(2);


    return Scaffold(
      backgroundColor: Color(0xFF111328),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF111328),
        title: Text('Result'),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Your Result',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: EdgeInsets.all(15),
            color: Color(0xFF1D1E33),
            height: 550,
            width: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Gender : $gender',style: TextStyle(color: Colors.white,fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Age : $age',style: TextStyle(color: Colors.white,fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Weight : $weight',style: TextStyle(color: Colors.white,fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Height : $height',style: TextStyle(color: Colors.white,fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('BMI : $bmi',style: TextStyle(color: Colors.white,fontSize: 20)),
                )

        ],
            ),
          )

        ],
      ),
    );
  }
}
