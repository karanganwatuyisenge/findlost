import 'package:flutter/material.dart';
class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 208.0),
            child: Center(
              child: Text('Find lost',
                style: TextStyle(
                  color: Colors.deepPurple.shade800,fontSize: 50),
            ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
         ElevatedButton(
             style: ButtonStyle(
               minimumSize: MaterialStateProperty.all(Size(300, 50)),
               backgroundColor: MaterialStateProperty.all(Colors.yellow.shade600)
             ),
             onPressed: (){},
             child: Text('Log In',style: TextStyle(fontSize: 20),)),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                    Size(300, 50)),
                backgroundColor: MaterialStateProperty.all(Colors.yellow.shade600),
              ),
              onPressed: (){},
              child: Text('Sign Up',style: TextStyle(fontSize: 20),)),
        ],
      ),
    );
  }
}
