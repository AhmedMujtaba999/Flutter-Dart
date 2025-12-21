void main() {
  
// object of a class
  // here User() is an instance of a class
  //Type is User 
  //name is username
  User user1= User('ahmed',23);
  print(user1.username);// calling username
  print(user1.age);// age of the user from the class User
  user1.login();//invoking a function or calling a function
 User user2= User('mujtaba',24);
  print(user2.username);
}

//class user
class User{
  String?username;
  int?age;
 // String username;
// int age; 
// User(this.username, this.age);

  User(String u, int a){
    this.username = u;
    this.age = a;
  }
  void login(){
print('user logged in');}

}

