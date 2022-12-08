import 'package:flutter/material.dart';
import 'package:test_app/screens/home.dart';
import 'package:test_app/screens/signup.dart';
import 'package:test_app/services/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();
  late String username,pwd;

  Services services =  new Services();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("S'authentifier"),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child:
                    Image.asset("assets/images/minecraft.jpg", width: 460, height: 215)),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: TextFormField(
                  
                    validator: (value)  {
                      if(value!.isEmpty){
                        return "le username est vide !";
                      }else{
                        username = value;
                        print(username);
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Username"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: TextFormField(
                    obscureText: true,
                    validator: (value)  {
                      if(value!.isEmpty){
                        return "le mot de passe est incorrect !";
                      }else{
                        pwd = value;
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Mot de passe"),
                  ),
                ),
                Column (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: ElevatedButton(
                      child: const Text("S'authentifier"),
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          _formKey.currentState!.save();
                          services.signin(username, pwd,context);
                        ScaffoldMessenger.of(context).showSnackBar(
                           SnackBar(content: Text("Username " +username)),
                          );
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));

                          
                        }
                        }
                    ),
                  ),

                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 10,right: 10),
                      child: ElevatedButton(
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
                        child: Text("Créer un compte"),
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => Signup()
                          ));
                        },
                      ),
                    ),

                  ],
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     const Text("Mot de passe oublié ?"),
                      SizedBox(width: 8),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));
                        },
                        child: Text("Cliquer ici" ,style: TextStyle(
                          color: Colors.blueAccent
                        ),),
                      )
                    ],
                  ),

                )
              ],
            ),
          ),
        )
    );
  }
}
