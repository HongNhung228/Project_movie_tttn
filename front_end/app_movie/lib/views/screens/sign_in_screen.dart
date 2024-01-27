import 'package:app_movie/constant/colors.dart';
import 'package:app_movie/views/screens/home_screen.dart';
import 'package:app_movie/views/screens/verify_email_screen.dart';
import 'package:app_movie/views/widgets/custom_button.dart';
import 'package:app_movie/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool passObscure = true;
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [ primaryMain1, primaryMain2 ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight
              ),
              color: Colors.grey.withOpacity(.7),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 64,
                  left: 0,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [ primaryMain1, primaryMain2 ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(40)
                        )
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png'),
                    const SizedBox(height: 16),
                          
                    Text(
                      'Đăng Nhập',
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 32),
                          
                    CustomTextFormField(
                      hintText: 'Nhập email',
                      hintStyle: const TextStyle(
                        color: outline,
                      ),
                      filled: true,
                      fillColor: Colors.transparent,
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30)
                        ),
                        borderSide: BorderSide(
                          width: 1,
                          color: outline
                        )
                      ),
                          
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30)
                        ),
                        borderSide: BorderSide(
                          width: 2,
                          color: outline,
                        )
                      ),
                          
                      prefixIcon: const Icon(
                        IconlyLight.message,
                        color: Colors.white,
                      ),
                          
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: Colors.white)
                    ),
                    const SizedBox(height: 16),
                          
                    CustomTextFormField(
                      hintText: 'Nhập mật khẩu',
                      hintStyle: const TextStyle(
                        color: outline,
                      ),
                      filled: true,
                      fillColor: Colors.transparent,
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30)
                        ),
                        borderSide: BorderSide(
                          width: 1,
                          color: outline
                        )
                      ),
                          
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30)
                        ),
                        borderSide: BorderSide(
                          width: 2,
                          color: outline,
                        )
                      ),
                          
                      prefixIcon: const Icon(
                        IconlyLight.lock,
                        color: Colors.white,
                      ),
                          
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passObscure = !passObscure;
                          });
                        }, 
                        icon: !passObscure ? const Icon(
                            IconlyLight.show,
                          color: Colors.white,
                        ) : const Icon(
                          IconlyLight.hide,
                          color: Colors.white,
                        )
                      ),
                          
                      obscureText: passObscure,
                      style: const TextStyle(color: Colors.white)
                    ),
                    const SizedBox(height: 16),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              checked = !checked;
                            });
                          },
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: outline
                              )
                            ),
                            child: Icon(
                              checked ? Icons.check : null,
                              color: Colors.white,
                              size: 16,
                            ) ,
                          ),
                        ),
                        const SizedBox(width: 8),
                          
                        Text(
                          'Nhớ mật khẩu',
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: outline
                          ),
                        ),
                        const SizedBox(width: 32),
                          
                          
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => const VerifyEmailScreen())
                            );
                          },
                          child: Text(
                            'Quên mật khẩu?',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                          
                    CustomButton(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: MediaQuery.of(context).size.height / 20,
                      text: 'Đăng Nhập',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700
                      ),
                      onTap: () => Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => const HomeScreen())
                      ),
                    ),
                    const SizedBox(height: 16),
                          
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            decoration: const BoxDecoration(
                              color: outline
                            ),
                          )
                        ),
                          
                        Expanded(
                          child: Text(
                            'Hoặc tiếp tục với',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white
                            ),
                          )
                        ),
                          
                        Expanded(
                          child: Container(
                            height: 1,
                            decoration: const BoxDecoration(
                              color: outline
                            ),
                          )
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width/5,
                            height: MediaQuery.of(context).size.height/20,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(14)
                              ),
                              border: Border.all(
                                width: 1,
                                color: outline
                              )
                            ),
                            child: Image.asset('assets/images/icon_google.png')
                          ),
                        ),
                        const SizedBox(width: 32),
                          
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width/5,
                            height: MediaQuery.of(context).size.height/20,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(14)
                              ),
                              border: Border.all(
                                width: 1,
                                color: outline
                              )
                            ),
                            child: Image.asset('assets/images/icon_facebook.png')
                          ),
                        ),
                        const SizedBox(width: 32),
                          
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width/5,
                            height: MediaQuery.of(context).size.height/20,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(14)
                              ),
                              border: Border.all(
                                width: 1,
                                color: outline
                              )
                            ),
                            child: Image.asset('assets/images/icon_apple.png')
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bạn chưa có tài khoản?',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: outline
                          ),
                        ),
                        const SizedBox(width: 8),
                          
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Đăng kí ngay',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                        ),
                      ],
                    ),
                    
                  ],
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}