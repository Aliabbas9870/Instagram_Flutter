import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  final VoidCallback? show;

  const Login({required this.show, super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final email = TextEditingController();
  final pass = TextEditingController();
  FocusNode Email_f = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 98.w,
              width: 100.w,
            ),
            Center(
              child: Text(
                "Instagram",
                style: GoogleFonts.paytoneOne(fontSize: 28),
              ),
            ),
            SizedBox(
              height: 120.h,
            ),
            Container(
              height: 254.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFields(email, "Enter Email", Icons.email, Email_f),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextFields(pass, "Enter Password", Icons.lock, Email_f),
                  forget(),
                  SizedBox(
                    height: 12.h,
                  ),
                  Login(),
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
            "Don't have a account?",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13.sp,
            ),
          ),
          InkWell(
            onTap: widget.show,
            child: Text(
              "Sign up",
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

  InkWell Login() {
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
            "Login",
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
