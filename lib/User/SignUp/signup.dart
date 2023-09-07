import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:kapwa/User/SignIn/signin.dart';

import '../BottomNavigationBar/bottomnavigationbar.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool passwordObscured = true;
  String countryCode = '+1';
  var numberA = '';
  String value = '+1';
  final myController = TextEditingController();
  //
  final TextEditingController numberController = TextEditingController();
  String initialCountry = 'CA';
  PhoneNumber number = PhoneNumber(isoCode: 'CA');

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    numberController.dispose();
    myController.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xffF5F5F5),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .06,
                ),
                GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.arrow_back,
                            color: Color(0xffFF1816),
                          )
                        ],
                      ),
                    ),

                    // Within the `FirstRoute` widget
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignIn()),
                      );
                    }),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/kapwa_icon.png'),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Hannari',
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff1E4798),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .04,
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        margin: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: const Color(0xff1E4799),
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Image.asset('assets/images/user_icon.png'),
                      ),
                      labelText: '    Name',
                      hintStyle: TextStyle(
                        fontFamily: 'Hannari',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: const Color(0xff000000),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        margin: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: const Color(0xff1E4799),
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Image.asset('assets/images/email_icon.png'),
                      ),
                      labelText: '    Email',
                      hintStyle: TextStyle(
                        fontFamily: 'Hannari',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: const Color(0xff000000),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    obscureText: passwordObscured,
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        margin: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: const Color(0xff1E4799),
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Image.asset('assets/images/lock_icon.png'),
                      ),
                      labelText: '   Password',
                      hintStyle: TextStyle(
                        fontFamily: 'Hannari',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: const Color(0xff000000),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordObscured = !passwordObscured;
                          });
                        },
                        icon: Icon(
                          passwordObscured
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: const Color(0xff1E4799),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 325.w,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: InternationalPhoneNumberInput(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onInputChanged: (PhoneNumber number) {
                        print('Number is ${number.phoneNumber}');
                        setState(() {
                          numberA = number.phoneNumber.toString();
                        });
                      },
                      onInputValidated: (bool value) {
                        print(value);
                      },
                      selectorConfig: const SelectorConfig(
                          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                          showFlags: true,
                          useEmoji: true),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: const TextStyle(color: Colors.black),
                      initialValue: number,
                      textFieldController: numberController,
                      formatInput: false,
                      keyboardType: const TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      inputBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      onSaved: (PhoneNumber number) {
                        print('On Saved: $number');
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                GestureDetector(
                    child: Container(
                      height: 40.h,
                      width: 284.w,
                      decoration: BoxDecoration(
                        color: const Color(0xff1E4799),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xffFFFFFF),
                            ),
                          )
                        ],
                      ),
                    ),
// Within the `FirstRoute` widget
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const bottomNavigationBar()),
                        );
                      }
                    }),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account ? ',
                      style: TextStyle(
                        fontFamily: 'Hannari',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff868889),
                      ),
                    ),
                    GestureDetector(
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontFamily: 'Hannari',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xffFF1816),
                          ),
                        ),

                        // Within the `FirstRoute` widget
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignIn()),
                          );
                        }),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .04,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
