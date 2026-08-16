abstract final class ApiEndpoints {
  // Food Items
  static const String getFoodItemsOnThisWeek =
      '/foodItems/getFoodItemsOnThisWeek';

  // User
  static const String login = '/user/login';

  static const String register = '/user/createNewUser';

  static const String getUserInfo = '/user/getUserInfo';

  static const String verifyForgotPassword =
      '/user/forgotPassword/verify';

  static const String resetForgotPassword =
      '/user/forgotPassword/reset';

  // Orders
  static const String createOrder =
      '/orders/createOrder';

  static const String cancelOrder =
      '/orders/cancelOrder';

  static const String getAllOrdersByUserId =
      '/orders/getAllOrdersByUserId';

  static const String getAllOrderByUserIdForMonthYear =
      '/orders/getAllOrderByUserIdForMonthYear';
}