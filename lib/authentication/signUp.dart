import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body: Padding(
       padding: EdgeInsets.all(16.0),
       child: Form(
         key: _formKey,
           child: Column(
             children: [
               SizedBox(
                 height: 60
               ),
               Center(
                 child: Text('Sign Up',
                   style: TextStyle(color: Color(0xFF384a6e),fontSize: 30),),
               ),
               SizedBox(
                 height: 50,
               ),
               TextFormField(
                 decoration: InputDecoration(
                   hintText: 'Name',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                   )
                 ),
               ),
               SizedBox(
                 height: 20
               ),
               TextFormField(
                 decoration: InputDecoration(
                   hintText: 'Email',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10)
                   )
                 ),
               ),
               SizedBox(
                 height: 20
               ),
               TextFormField(
                 obscureText: !_showPassword,
                 decoration: InputDecoration(
                   hintText: 'Password',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10)
                   ),
                   suffixIcon: IconButton(
                     icon: Icon(
                       _showPassword ? Icons.visibility:Icons.visibility_off,
                     ),
                     onPressed: () { 
                       setState(() {
                         _showPassword=!_showPassword;
                       });
                     },

                   )
                 ),
               ),
               SizedBox(
                 height: 20
               ),
               TextFormField(
                 decoration: InputDecoration(
                   hintText: 'Phone',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                   )
                 )
               ),
               SizedBox(
                 height: 20
               ),
               ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     minimumSize: Size.fromHeight(50),
                     backgroundColor: Colors.yellow.shade600,
                   ),
                   onPressed: (){},
                   child: Text('Sign Up',style: TextStyle(fontSize: 20),)),
               SizedBox(
                 height: 40,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Text('Already have an account?'),
                   TextButton(
                       onPressed: (){},
                       child: Text('Sign In'))
                 ],
               ),
             ],
           ))
     ),
    );
  }
}
