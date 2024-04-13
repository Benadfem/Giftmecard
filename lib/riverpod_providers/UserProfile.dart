// class UserNotifier extends StateNotifier<List<User>> {
//   UserNotifier([List<User>? state]) : super(state ?? <User>[]);
//
//   void addUser() {}
// }

// class UserNotifier extends StateNotifier<List<User>> {
//   UserNotifier(List<User> state) : super(state ?? <User>[]);

// Method to fetch user data using a provider
//   void fetchData(Reader read) {
//     final userService = read(userServiceProvider);
//     // Use userService to fetch user data
//   }
// }

class User {
  final String userName;
  final String password;

  User({
    required this.userName,
    required this.password,
  });
}
