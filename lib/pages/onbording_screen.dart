import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:harvesthub/weidget/bricolagetext.dart';
import 'package:harvesthub/weidget/custombutton.dart';
import 'package:harvesthub/weidget/plustextjak.dart';

class OnbordingScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  var _image = null;
  late final useris;
  Border ontabBorder = Border.all(color: Colors.green, width: 2);
  Color ontab = const Color.fromARGB(160, 186, 217, 188);
  TextEditingController nameControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 229, 229),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              CustomTextBricolage(
                "Tell us about you",
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 15),
              CustomTextplusjak(
                "Thise helps buyers and sellers know who they ",
                height: 1.7,
              ),
              CustomTextplusjak("are dealing with.", height: 1),
              SizedBox(height: 30),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {}, // your image picker function
                    child: DottedBorder(
                      borderType: BorderType.Circle,
                      color: Colors.green,
                      strokeWidth: 1.5,
                      dashPattern: const [4, 4],
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 247, 244, 244),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: _image == null
                            ? const Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.green,
                                size: 32,
                              )
                            : Image.file(_image, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextplusjak(
                        "Add a photo.Profile with a photo",
                        color: const Color.fromARGB(255, 124, 124, 124),
                      ),

                      CustomTextplusjak(
                        "get more replies",
                        color: const Color.fromARGB(255, 124, 124, 124),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 25),
              CustomTextplusjak("Full name", fontWeight: FontWeight.bold),
              SizedBox(height: 15),
              TextFormField(
                controller: nameControler,

                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 247, 244, 244),
                  hintText: "Your name",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 30),
              CustomTextplusjak("I am a", fontWeight: FontWeight.bold),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ontab,
                        border: ontabBorder,
                      ),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                       Icon(Icons.eco)   ,
                          CustomTextplusjak("Farmer")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(

                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ontab,
                        border: ontabBorder
                        ,
                      ),
                       child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon((Icons.person_add)  ),
                          CustomTextplusjak("Trader or buyer")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height:10),
              CustomTextplusjak("Tise is only label,Everyone can buy and sell",color: Colors.grey,),

              SizedBox(height: 50,),
              CustomButton(label: "Sart ysing HarvestHub", onPressed: (){})
           
           
            ],
          ),
        ),
      ),
    );
  }
}
