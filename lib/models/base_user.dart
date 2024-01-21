// can I associate a string with an enum value
enum UserType {
  clubAdmin,
  venueAdmin,
  facultyIncharge,
}

String getUserTypeFromString(UserType userType) {
  switch (userType) {
    case UserType.clubAdmin:
      return "Club Admin";
    case UserType.venueAdmin:
      return "Venue Admin";
    case UserType.facultyIncharge:
      return "Faculty Incharge";
  }
}

class BaseUser {
  String id = '';
  String name = '';
  String email = '';
  String password = '';
  UserType userType = UserType.clubAdmin;

  BaseUser();
}
