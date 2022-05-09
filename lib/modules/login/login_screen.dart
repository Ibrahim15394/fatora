import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white70,
   body: SafeArea(
     child: Padding(
       padding: const EdgeInsets.all(20.0),
       child: Center(
         child: SingleChildScrollView(
           child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 'User Name',
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.grey[500],
                 ),
               ),
               const SizedBox(
                 height: 5.0,
               ),
               TextFormField(
                 controller: emailController,
                 keyboardType: TextInputType.emailAddress,
                 onFieldSubmitted: (value)
                 {
                   print('value');
                 },
                 validator: (value)
                 {
                   if(value!.isEmpty)
                   {
                     return 'email address must not be empty';
                   }
                 },
                 decoration:const InputDecoration(
                   label: Text('User Name'),
                   prefixIcon: Icon(Icons.email_outlined,color: Colors.black,),
                   border:OutlineInputBorder (),
                 ) ,
               ),
               const SizedBox(
                 height: 15.0,
               ),
               Text(
                 'password',
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.grey[500],
                 ),
               ),
               const SizedBox(
                 height: 5.0,
               ),
               TextFormField(
                 controller: passwordController,
                 keyboardType: TextInputType.visiblePassword,
                 obscureText: true,
                 onFieldSubmitted: (value)
                 {
                   print('value');
                 },
                 validator: (value)
                 {
                   if(value!.isEmpty)
                   {
                     return 'password address must not be empty';
                   }
                 },
                 decoration:const InputDecoration(
                   label: Text(' password'),
                   prefixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.black,),
                   border: OutlineInputBorder(),
                 ) ,
               ),
               const SizedBox(
                 height: 10.0,
               ),
               Row(
                 children:const [
                   Icon(Icons.crop_square),
                   Text(
                     'remember me',
                     style: TextStyle(
                       color: Colors.grey,
                     ),
                   ),
                   SizedBox(
                     width: 10.0,
                   ),
                 ],
               ),
               const SizedBox(
                 height: 20.0,
               ),
               Container(
                 width:double.infinity,
                 height: 40.0,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20.0,),
                     ),
                 child: MaterialButton(
                   color: Colors.blueGrey,
                   child: const Text(
                     'Login',
                     style: TextStyle(
                       color: Colors.white,
                     ),
                   ),
                     onPressed: (){}
                     ),
               ),

             ],
           ),
         ),
       ),
     ),
   ),
    );
  }
}
