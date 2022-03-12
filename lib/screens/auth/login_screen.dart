
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _viable = false;
  IconData _passwordPrefix = Icons.visibility_off;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  String? _passwordError;
  String? _emailError;
  late TapGestureRecognizer _register;

  @override
  void initState() {
    _passwordController = TextEditingController();
    _emailController = TextEditingController();
    _register = TapGestureRecognizer()..onTap = navigateToRegisterScreen;
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _register.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login',
        style: TextStyle(
            color: Colors.black87,
                fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Welcome back..',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 22,
              ),),
              Text('login with email & password.',
              style: TextStyle(
                color: Colors.blueGrey.shade900
              ),),
              const SizedBox(height: 35,),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: const Text('Email'),
                  alignLabelWithHint: true,
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorText: _emailError,
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                controller: _passwordController,
                obscureText: !_viable,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  label: const Text('Password'),
                  alignLabelWithHint: true,
                  suffixIcon: IconButton(icon: Icon(_passwordPrefix,color: Colors.grey,),onPressed: (){
                    setState(() {
                      _passwordPrefix = _viable ? Icons.visibility_off : Icons.visibility;
                      _viable = !_viable;
                    });
                  },),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorText: _passwordError,
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(onPressed: (){
                  setState(() {
                    if(validate()){
                      navigateToHomeScreen();
                    }
                  });
                },
                    child:const Text('Login'),
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 18
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),),
              ),
              const SizedBox(height: 15,),
              RichText(text: TextSpan(
                text: 'Don\'t have an account? ',
              style: const TextStyle(
                color: Colors.black87
              ),
              children: [
                TextSpan(
                  text: 'Register now!',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: _register,
                )
              ]),)
            ],
          ),
        ),
      ),
    );
  }

  bool validate(){
    if(_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty){
      _emailError = null;
      _passwordError = null;
      return true;
    }else {
      _passwordError = _passwordController.text.isEmpty ? 'Password con\'t be empty' : null;
      _emailError = _emailController.text.isEmpty ? 'Invalid email' : null;
      return false;
    }
  }// validate function


void navigateToHomeScreen(){
     ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: const Text('login successfully'),
         backgroundColor: Colors.green.shade300,
       behavior: SnackBarBehavior.floating,
       margin: const EdgeInsets.all(10),),
     );
     Future.delayed(const Duration(seconds: 3),(){
       Navigator.pushReplacementNamed(context, '/main_screen');
     });
}// navigateToHomeScreen

void navigateToRegisterScreen(){
  Navigator.pushNamed(context, '/register_screen');
}


}
