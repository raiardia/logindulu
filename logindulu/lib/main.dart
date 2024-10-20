import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0E0E0), // Warna background abu-abu terang
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo Undiknas
                Image.network(
                  'https://d22gwcrfo2de51.cloudfront.net/wp-content/uploads/2020/08/logo_Universitas-Pendidikan-Nasional-thumb.png', // Ganti dengan URL gambar Anda
                  height: 250,
                ),
                SizedBox(height: 30),

                // Form Email
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail,
                        color: Colors.orange), // Ikon email warna oranye
                    labelText: 'Email',
                    fillColor:
                        Colors.grey[200], // Background field lebih terang
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                SizedBox(height: 10),

                // Form Password
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key,
                        color: Colors.orange), // Ikon password warna oranye
                    labelText: 'Password',
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
                SizedBox(height: 10),

                // Tombol Login
                SizedBox(
                  width: double.infinity, // Lebar tombol mengikuti form
                  child: ElevatedButton(
                    onPressed: () {
                      // Fungsi login
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 15, 37, 70), // Warna tombol biru tua
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white), // Font lebih besar
                    ),
                  ),
                ),
                SizedBox(height: 50),

                // Tombol Mahasiswa Baru
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: Text(
                      'Mahasiswa Baru? Klik disini',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(height: 8),

                // Tombol Lupa Password
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: Text(
                      'Lupa password',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
