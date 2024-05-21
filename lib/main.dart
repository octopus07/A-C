import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      routes: {
        '/register': (context) => RegisterScreen(),
        '/home': (context) => HomeScreen(),
        '/fault_selection': (context) => FaultSelectionScreen(),
      },
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF005B7F),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Giriş Yap!',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'E-mail',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Şifre',
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (bool? value) {}),
                    Text('Beni Hatırla', style: TextStyle(color: Colors.white)),
                  ],
                ),
                Text('Şifremi Unuttum', style: TextStyle(color: Colors.white)),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.login),
              label: Text('Google ile Giriş Yap'),
              style: ElevatedButton.styleFrom(primary: Colors.white),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text('Hesabın yok mu? Kayıt Ol!',
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF005B7F),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Kayıt Ol!',
              style: TextStyle(color: Colors.white, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'İsim',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Soyisim',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'E-mail',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Şifre',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Çalıştığınız Alan',
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                    title: Text('B1.1', style: TextStyle(color: Colors.white)),
                    value: 'B1.1',
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    title: Text('B2', style: TextStyle(color: Colors.white)),
                    value: 'B2',
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Çalıştığınız Birim',
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Hat Bakım', style: TextStyle(color: Colors.white)),
                Text('Hangar', style: TextStyle(color: Colors.white)),
              ],
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text('Kayıt Ol ve Devam Et'),
              style: ElevatedButton.styleFrom(primary: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF005B7F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.build, size: 100, color: Colors.white),
            SizedBox(height: 16),
            Text(
              'A/Care',
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            SizedBox(height: 8),
            Text(
              'Merhaba, X 👋',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Geri Dön'),
              style: ElevatedButton.styleFrom(primary: Colors.white),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/fault_selection');
              },
              child: Text('Hadi Başlayalım!'),
              style: ElevatedButton.styleFrom(primary: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class FaultSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF005B7F),
      appBar: AppBar(
        title: Text('Hesabım'),
        backgroundColor: Color(0xFF005B7F),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Arıza Türü Ara',
              ),
            ),
            SizedBox(height: 16),
            Wrap(
              spacing: 8.0,
              children: [
                Chip(label: Text('Motor')),
                Chip(label: Text('MCDU')),
                Chip(label: Text('Elektronik')),
              ],
            ),
            SizedBox(height: 16),
            Text('Arıza Türü Seçimi:', style: TextStyle(color: Colors.white)),
            SizedBox(height: 16),
            ListTile(
                title: Text('Yapay destek hattı,',
                    style: TextStyle(color: Colors.amber))),
            ListTile(
              title: Text('Motor Arızaları',
                  style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              title: Text('Aviyonik Bay Arızaları',
                  style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              title: Text('Kokpit Arızaları',
                  style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              title: Text('Landing Gear Arızaları',
                  style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              title: Text('Radar Arızaları',
                  style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              title:
                  Text('Tool Arızaları', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              title: Text('Diğer', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
