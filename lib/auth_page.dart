import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
              'images/logo.png', 
              fit: BoxFit.contain, 
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.45,
              ),
        
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                    hintText: 'Enter email',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.blue),
                  ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.black26),
                  ),
                ),
                          ),
              ),
        
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    
                  labelStyle: TextStyle(color: Colors.black),
                  labelText: 'Password',
                  hintText: 'Enter password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.visibility)),
                   focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black26),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.02,
            ),
        
            Container (
              width: MediaQuery.of(context).size.width * 0.9,
              alignment: Alignment.centerRight,
              child: InkWell(
                child: Text('Forgot password?'),
                onTap: () {},
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.width * 0.02),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.055,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15)
                      )
                    ),
                  backgroundColor: WidgetStatePropertyAll(Colors.orange),
                ),
                onPressed: () {},
                child: Text(
                  'Войти',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('No account?'),
                TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/reg');
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.blue)
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
