import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(20),
        // top: getProportionateScreenHeight(15),
        right: getProportionateScreenWidth(20),
        // bottom: getProportionateScreenHeight(15),
      ),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7, right: 7),
            child: Row(
              children: [
                Text(
                  'Edit Profile',
                  // style: Theme.of(context).textTheme.headline1,
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.close,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          Center(
            child: Container(
              width: 350,
              decoration: BoxDecoration(
                color: Color(0xFFBDBDBD).withOpacity(0.1),
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(15),
                top: getProportionateScreenHeight(15),
                right: getProportionateScreenWidth(15),
                bottom: getProportionateScreenHeight(40),
              ),
              child: Column(
                children: [
                  Text(
                    'Upload image',
                    // style: Theme.of(context).textTheme.headline1,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(20),
                    dashPattern: [7, 7],
                    color: Colors.black38,
                    strokeWidth: 2,
                    // padding: EdgeInsets.fromLTRB(115, 37, 115, 37),
                    padding: EdgeInsets.fromLTRB(
                        getProportionateScreenWidth(75),
                        getProportionateScreenHeight(25),
                        getProportionateScreenWidth(75),
                        getProportionateScreenHeight(25)),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          boxShadow: [
                            BoxShadow(spreadRadius: 6, color: Colors.black38),
                          ]),
                      child: IconButton(
                        icon: Icon(
                          Icons.upload_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          // Image Picker
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: nameController,
                  autofocus: false,
                  textCapitalization: TextCapitalization.words,
                  validator: (value) {
                    if (value!.isEmpty || value.trim().isEmpty) {
                      return 'Name is required';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Your full name',
                    icon: Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    // prefixIcon: Icon(Icons.person, size: 25, color: Colors.grey,),
                    // contentPadding: EdgeInsets.only(left: 30),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38),
                    ),
                    enabled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: usernameController,
                  autofocus: false,
                  keyboardType: TextInputType.text,
                  validator: (value){
                    if(value!.isEmpty || value.trim().isEmpty){
                      return 'Username is required';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Username',
                    icon: Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38),
                    ),
                    enabled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: emailController,
                  autofocus: false,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value){
                    if(value!.isEmpty || value.trim().isEmpty){
                      return 'Email is required';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Your Email',
                    icon: Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    enabled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: phoneController,
                  autofocus: false,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if(value!.isEmpty || value.trim().isEmpty) {
                      return 'Phone no. is required';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Your Phone',
                    icon: Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38),
                    ),
                    enabled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Container(
            height: getProportionateScreenHeight(40),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
                child: Text('Save Changes', style: TextStyle(fontSize: 18, color: Colors.white70, fontWeight: FontWeight.bold),)
            ),
          ),
        ],
      ),
    );
  }
}
