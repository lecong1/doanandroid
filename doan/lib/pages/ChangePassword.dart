import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangPassword extends StatefulWidget {
  const ChangPassword({Key? key}) : super(key: key);

  @override
  State<ChangPassword> createState() => _ChangPasswordState();
}

class _ChangPasswordState extends State<ChangPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Row(
          children: [
            Text(
              'Thay đổi mật khẩu',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              initialValue: "lecongg",
              textInputAction: TextInputAction.next,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              decoration: const InputDecoration(
                labelText: 'Nhập mật khẩu mới',
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            TextFormField(
              initialValue: "lecongg",
              textInputAction: TextInputAction.next,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              decoration: const InputDecoration(
                labelText: 'Xác nhận mật khẩu mới',
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
              child: Container(
                width: double.maxFinite,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Lưu',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
