import 'package:flutter/material.dart';
import 'package:harvesthub/weidget/bricolagetext.dart';
import 'package:harvesthub/weidget/custombutton.dart';
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
    return Scaffold(  resizeToAvoidBottomInset: false,
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
                          keyboardType: TextInputType.phone,
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
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      CustomTextplusjak(
                        "We will send a 6-digit code by SMS.No password needed",
                        fontSize: 13,
                        color: const Color.fromARGB(255, 126, 125, 125),
                      ),
                      SizedBox(height: 25),

                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // valid: send OTP
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF2E7D32),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            "Send OTP",
                            style: TextStyle(
                              fontFamily: "plusjak",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 35),
                      Container(
                       decoration: BoxDecoration(
                         color: Color.fromARGB(109, 255, 255, 255),
                         borderRadius: BorderRadius.circular(15),
                       ),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(25,20,1,20),
                          child: Column( crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 23,
                                    child: Image(
                                      image: AssetImage("assets/images/ok.png"),
                                    ),
                                  ),SizedBox(width: 5,),
                                  CustomTextplusjak("Every account is phone verified",fontWeight: FontWeight.w500,),
                                ],
                              ),
                          SizedBox(height: 10,),
                               Row(
                                children: [
                                  SizedBox(
                                    height: 23,
                                    child: Image(
                                      image: AssetImage("assets/images/ok.png"),
                                    ),
                                  ),SizedBox(width: 5,),
                                  CustomTextplusjak("Free to list your crops",fontWeight: FontWeight.w500,),
                                ],
                              ),
                              
                          SizedBox(height: 10,),
                               Row(
                                children: [
                                  SizedBox(
                                    height: 23,
                                    child: Image(
                                      image: AssetImage("assets/images/ok.png"),
                                    ),
                                  ),SizedBox(width: 5,),
                                  CustomTextplusjak("Direct offers from verified buyers",fontWeight: FontWeight.w500,),
                                ],
                              ),
                              
                              
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      CustomTextplusjak("By continuing you agree to our Terms&Privacy Policy.",fontSize: 10,)
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
