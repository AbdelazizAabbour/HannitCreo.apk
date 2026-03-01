class ApiConfig {
  static const String baseUrl = "https://cabinet-hannit.dz/api"; // Example URL

  // Public Routes
  static const String services = "/services";
  static const String doctors = "/doctors";
  static const String contact = "/contact";
  static const String appointments = "/appointments";
  static const String login = "/login";
  static const String register = "/register";
  static const String adminLogin = "/admin/login";
  static const String googleAuth = "/auth/google";

  // Authenticated User Routes
  static const String userProfile = "/user";
  static const String logout = "/logout";
  static const String userDashboard = "/dashboard";
  static const String userAppointments = "/dashboard/appointments";
  static const String userMessages = "/dashboard/messages";

  // Admin Routes
  static const String adminDashboard = "/admin/dashboard";
  static const String adminAppointments = "/admin/appointments";
  static const String adminMessages = "/admin/messages";
  static const String adminUsers = "/admin/users";
  static const String adminPatients = "/admin/patients";
}
