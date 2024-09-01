import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  final VoidCallback show;
  const Signup({required this.show, super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final email = TextEditingController();
  final pass = TextEditingController();
  final username = TextEditingController();
  final bio = TextEditingController();
  FocusNode Email_f = FocusNode();
  FocusNode username_f = FocusNode();
  FocusNode bio_f = FocusNode();
  FocusNode pass_f = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 48.w,
              width: 100.w,
            ),
            Center(
              child: Text(
                "Instagram",
                style: GoogleFonts.paytoneOne(fontSize: 28),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              height: 454.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(
                      child: CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    radius: 32.r,
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  TextFields(username, "UserName", Icons.person, username_f),

                  SizedBox(
                    height: 12.h,
                  ),
                  TextFields(email, "Enter Email", Icons.email, Email_f),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextFields(bio, "bio", Icons.abc, bio_f),
                  // forget(),
                  SizedBox(
                    height: 12.h,
                  ),

                  TextFields(pass, "Enter Password", Icons.lock, Email_f),
                  // forget(),
                  SizedBox(
                    height: 12.h,
                  ),
                  SignUp(),
                  SizedBox(
                    height: 12.h,
                  ),
                  Have()
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget Have() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Already have a account?",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13.sp,
            ),
          ),
          InkWell(
            onTap: widget.show,
            child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  InkWell SignUp() {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 44.h,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(12.r)),
          child: Text(
            "Sign Up",
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget forget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Text(
        "forget password",
        style: TextStyle(
            fontSize: 13, color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget TextFields(TextEditingController controller, String type,
      IconData icon, FocusNode focusNode) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: focusNode.hasFocus ? Colors.black : Colors.grey,
            ),
            hintText: type,
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide(width: 2.w, color: Colors.grey))),
      ),
    );
  }
}
