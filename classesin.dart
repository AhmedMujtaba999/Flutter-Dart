void main() {
  
// object of a class
  // here User() is an instance of a class
  //Type is User 
  //name is username
  User user1= User();
  print(user1.username);// calling username
  print(user1.age);// age of the user from the class User
  user1.login();//invoking a function or calling a function
 
}

//class user
class User{
  
  String username="Ahmed";
  int age = 23;
  void login(){
print('user logged in');}

}

