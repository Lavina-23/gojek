import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/pages/homepage.dart';
import 'package:gojek/theme.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final form = FormGroup({
    'email': FormControl<String>(validators: [Validators.required, Validators.email]),
    'password': FormControl<String>(validators: [Validators.required]),
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(2),
                child: Container(
                  color: dark4,
                  height: 2,
                )),
            elevation: 0,
            toolbarHeight: 80,
            title: Container(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Text(
                    'Login',
                    style: bold18.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    width: 250,
                  ),
                  SvgPicture.asset('assets/icons/info.svg')
                ],
              ),
            )),
        body: ListView(
            children: [
              Padding(padding: const EdgeInsets.only(top: 70, left: 40, right: 40),
              child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/gojek.png', height: 100,),
                    const SizedBox(
                      height: 26,
                    ),
                    Text('Masukkan data yang sudah anda \ndaftarkan !', style: bold18.copyWith(color: dark1),),
                    const SizedBox(
                      height: 30,
                    ),
                    ReactiveForm(
                      formGroup: form,
                      child: Column(
                        children: <Widget>[
                          ReactiveTextField(
                            key: const Key('email'),
                              formControlName: 'email',
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                labelText: 'Email',
                              ),
                              validationMessages: {
                                'required': (eror) =>'The email must not be empty',
                                'email' : (eror) =>'The email value must be a valid email'
                              }
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ReactiveTextField(
                            key: const Key('password'),
                              formControlName: 'password',
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                labelText: 'Password',
                              ),
                              validationMessages: {
                                'required': (eror) =>'The password must not be empty',
                              }
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('Lupa Sandi?', 
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    )
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                            height: 30,
                            ),
                            SizedBox(
                              height: 50,
                              width: 250,
                              child: ReactiveFormConsumer(
                              builder: (context, form, child) {
                                return ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: green2,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                  ),
                                  key: const Key('submit'),
                                  onPressed: form.valid ? _onSubmit : null,
                                  child: const Text('Submit', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),)
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Belum memiliki akun? ', style: semibold14,),
                              Text('Daftar', style: semibold14.copyWith(color: green1),)
                            ],
                          )
                        ],
                      )
                    ),
                  ],
                )
              ),
            ],
            )
          );
  }
void _onSubmit(){
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
}
}
