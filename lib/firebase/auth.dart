import 'dart:convert';
import 'package:http/http.dart 'as http;
class Auth  {
  Future<void> authenticate (String email , String password , String urlSegment) async{
    final url="https://identitytoolkit.googleapis.com/v1/accounts:$urlSegment?key=AIzaSyBCsRB7WGN_njpAdOdb3f-ViK4CKa_OHmI";
    try{
      final res = await http.post(Uri.parse(url),body: json.encode({
        'email':email,
        'password':password,
        'returnSecureToken':true
      }));
      final resData =json.decode(res.body);
      if(resData['error']!=null){
        throw"${resData['error']['message']}";
      }
    }
    catch(e){
     rethrow;
    }
  }
  Future<void> signUp (String email , String password) async{
    return authenticate(email, password, 'signUp');
  }
  Future<void> signIn (String email , String password) async{
    return authenticate(email, password, 'signInWithPassword');
  }

}