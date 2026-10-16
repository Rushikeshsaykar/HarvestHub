import 'package:flutter/material.dart';
import 'package:harvesthub/weidget/bricolagetext.dart';
import 'package:harvesthub/weidget/plustextjak.dart';

class SignupScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2E7D32),
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xFF2E7D32),
                        backgroundImage: AssetImage(
                          "assets/images/nobglogo.png",
                        ),
                        radius: 25,
                      ),
                      SizedBox(width: 5),
                      CustomTextBricolage(
                        "HarvestHub",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  CustomTextBricolage(
                    "Sell your crop directly",
                    color: Colors.white,
                    fontSize: 37,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomTextBricolage(
                    "to buyers",
                    color: Colors.white,
                    fontSize: 37,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 20),
                  CustomTextplusjak(
                    "No middleman.Post a photo,get offer,agree",
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                  ),
                  CustomTextplusjak(
                    "on your price",
                    height: 2,
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 224, 220, 220),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 16, 24, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      CustomTextplusjak(
                        "Mobile number",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),

                      SizedBox(height: 12),
                      Form(
                        key: _formKey,
                        child: TextFormField(
                          controller: phoneController,
                          validator: (value) {
                            if (value == null || value.length != 10) {
                              return 'Enter a valid 10-digit number';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(109, 255, 255, 255),
                            hintText: "Enter number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      CustomTextplusjak("We will send a 6-digit code by SMS.No password needed",fontSize: 13,color:const Color.fromARGB(255, 126, 125, 125) ,)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
