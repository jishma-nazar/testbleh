import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testbleh/result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  int age = 0;
  int weight = 0;
  bool maleSelected = false;
  String gender = '';

  @override
  Widget build(BuildContext context) {

    var height = TextEditingController();


    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF111328),
        title: const Text('BMI Calculator'),
      ),
      backgroundColor: const Color(0xFF111328),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    maleSelected = true;
                    gender = 'Male';
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: maleSelected == false ?  Color(0xFF1D1E33) : Color(0xFFEB1555),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  height: 260,
                  width: 190,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/male.png'),
                      const SizedBox(height: 15,),
                      const Text('Male',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20))

                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    maleSelected = false;
                    gender = 'Female';

                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: maleSelected == true ?  Color(0xFF1D1E33) : Color(0xFFEB1555),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: 260,
                  width: 190,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/female.png'),
                      const SizedBox(height: 15,),
                      const Text('Female',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20))

                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 25),
            decoration: const BoxDecoration(
              color: const Color(0xFF1D1E33)
            ),
            height: 150,
            width: MediaQuery.of(context).size.width-25,


            //========height===============//
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Height',style: const TextStyle(color: Colors.white, fontSize: 20),),
                SizedBox(
                  width: 200,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: height,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white,width: 3)
                      ),
                      hintText: 'Enter Height'
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [



                //===========weight===============//
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: 260,
                  width: 190,
                  child:  Center(
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Weight',style: TextStyle(fontSize: 20,color: Colors.white),),
                        Text('$weight',style: TextStyle(fontSize: 40,color: Colors.white),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            weight != 0 ? IconButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: Icon(CupertinoIcons.minus_circled,color: Colors.white,size: 42,)) : Container(),
                            IconButton(onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },
                                icon: Icon(Icons.add_circle_outline,color: Colors.white,size: 42,)),
                          ],
                        )

                      ],
                    ),
                  ),

                ),


                //===========age===============//
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: 260,
                  width: 190,
                  child:  Center(
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Age',style: TextStyle(fontSize: 20,color: Colors.white),),
                        Text('$age',style: TextStyle(fontSize: 40,color: Colors.white),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            age != 0 ? IconButton(
                                onPressed: (){
                              setState(() {
                                age--;
                              });
                            },
                                icon: Icon(CupertinoIcons.minus_circled,color: Colors.white,size: 42,)) : Container(),
                            IconButton(onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                                icon: Icon(Icons.add_circle_outline,color: Colors.white,size: 42,)),
                          ],
                        )

                      ],
                    ),
                  ),

                )
              ],
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width-25,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFFEB1555),
                primary: Colors.white
              ),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(
                  age: age,
                  weight: weight,
                  gender: gender,
                  height: height.text
                )));
                }, child: Text('Calculate')),
          )


        ],
      ),
    );
  }
}


