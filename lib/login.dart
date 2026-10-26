// import 'package:atm_mutamar/colores.dart';
// import 'package:flutter/material.dart';
// import 'package:svg_flutter/svg.dart';

// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//            SvgPicture.asset(
//                 "assets/logo_atm.svg.svg",
//                 width: 116,
//                 height: 91,
//               ),
//               SizedBox(height: 20,),
//               Text("تسجيل الدخول إلى حسابك",style: TextStyle(color: AppColors.black,fontSize: 30,fontWeight: FontWeight.bold),)
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            const Text(
              "مؤتمر ATM",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            const Text(
              "تسجيل الدخول إلى حسابك",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            const Text(
              "يرجى تسجيل الدخول إلى حسابك",
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 36),

            /// الاسم
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text('* ', style: TextStyle(color: Colors.red)),
                  Text('الاسم', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: 'مثال: مينا جرجس تادرس',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              ),
            ),

            const SizedBox(height: 24),

            /// رقم التليفون
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text('* ', style: TextStyle(color: Colors.red)),
                  Text('رقم التليفون', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              keyboardType: TextInputType.phone,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: 'مثال: 0000 000 0000',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              ),
            ),

            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: const Text(
                  'تسجيل الدخول',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 24),
            GestureDetector(
              onTap: () {},
              child: const Text.rich(
                TextSpan(
                  text: 'ليس لديك حساب؟ ',
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'سجل الآن',
                      style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
