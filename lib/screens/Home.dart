import 'package:dayone/widgets/searchBar.dart';
import 'package:flutter/material.dart';

import '../widgets/ListImages.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.black,),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Find your",style: TextStyle(
                  fontSize: 20
                ),),
                SizedBox(height: 10,),
                Text("Inspiration",style: TextStyle(
                  fontSize: 35,fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 20,),
                SearchBat(),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(height: 10,),
              Container(
                color: Colors.grey.withOpacity(0.2),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(

                    children: [
                      //1.text
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Ptomo Today",style: TextStyle(fontWeight: FontWeight.bold),)),
                      SizedBox(height: 5,),
                      //2.list if images
    Container(
      //width: 420,

      child: Column(
        children: [
          ListImages(),
          SizedBox(height: 20,),
          //3. the final image
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/three.jpg",
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    ),
                    ],
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}




