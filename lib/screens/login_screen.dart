import 'package:flutter/material.dart';
import 'package:kuis/root.dart';

// Widget Class
class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// State Class
class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoggedIn = false;

  void _login({required String username, required String password}) {
    if (username == "Agna" && password == "166") {
      setState(() {
        _isLoggedIn = true;
      });

      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context) => Root()));

      // Memanggil snackbar
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.green, content: Text("Login Berhasil!")));
    } else {
      setState(() {
        _isLoggedIn = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(backgroundColor: Colors.red, content: Text("Login Gagal!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Screen"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                spacing: 10,
                children: [
                  
                    Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9Q8Ls4f_a0MIqSmz9Zj_GHOB7GvBslkNbESYWMzd9mw&s=10',
                  height: 200,
                  ),

                  Text(
                   "Selamat Datang di Toko Sepatu Selamat Berbelanja",
                     style: TextStyle(
                      fontSize: 14,
                       color: Color.fromARGB(255, 95, 88, 88),
                      ),
                          ),

                  const SizedBox(height: 10),
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(

                          hintText: "username",
                          border: OutlineInputBorder()),
                    ),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "password",
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: ElevatedButton(

                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  _isLoggedIn ? const Color.fromARGB(255, 255, 254, 251) : const Color.fromARGB(255, 85, 83, 235)),
                                  
                          onPressed: () {
                            _login(
                              username: _usernameController.text,
                              password: _passwordController.text,
                            );
                          },
                          child: Text("Login",
                          style: TextStyle(
                            color: Colors.white,),
                            ),
                            ),
                    )
                ],
              ),
            ),
          ),
        )
        );
  }
}
