// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_route.dart';

/// generated route for
/// [ChangePasswordScreen]
class ChangePasswordRoute extends PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({
    Key? key,
    required String username,
    required String fullname,
    List<PageRouteInfo>? children,
  }) : super(
         ChangePasswordRoute.name,
         args: ChangePasswordRouteArgs(
           key: key,
           username: username,
           fullname: fullname,
         ),
         initialChildren: children,
       );

  static const String name = 'ChangePasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChangePasswordRouteArgs>();
      return ChangePasswordScreen(
        key: args.key,
        username: args.username,
        fullname: args.fullname,
      );
    },
  );
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({
    this.key,
    required this.username,
    required this.fullname,
  });

  final Key? key;

  final String username;

  final String fullname;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key, username: $username, fullname: $fullname}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ChangePasswordRouteArgs) return false;
    return key == other.key &&
        username == other.username &&
        fullname == other.fullname;
  }

  @override
  int get hashCode => key.hashCode ^ username.hashCode ^ fullname.hashCode;
}

/// generated route for
/// [ChangePasswordSuccessScreen]
class ChangePasswordSuccessRoute extends PageRouteInfo<void> {
  const ChangePasswordSuccessRoute({List<PageRouteInfo>? children})
    : super(ChangePasswordSuccessRoute.name, initialChildren: children);

  static const String name = 'ChangePasswordSuccessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChangePasswordSuccessScreen();
    },
  );
}

/// generated route for
/// [ForgotPasswordScreen]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute({List<PageRouteInfo>? children})
    : super(ForgotPasswordRoute.name, initialChildren: children);

  static const String name = 'ForgotPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ForgotPasswordScreen();
    },
  );
}

/// generated route for
/// [HistoryScreen]
class HistoryRoute extends PageRouteInfo<void> {
  const HistoryRoute({List<PageRouteInfo>? children})
    : super(HistoryRoute.name, initialChildren: children);

  static const String name = 'HistoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HistoryScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [ListChoiceScreen]
class ListChoiceRoute extends PageRouteInfo<void> {
  const ListChoiceRoute({List<PageRouteInfo>? children})
    : super(ListChoiceRoute.name, initialChildren: children);

  static const String name = 'ListChoiceRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ListChoiceScreen();
    },
  );
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginScreen();
    },
  );
}

/// generated route for
/// [SignupScreen]
class SignupRoute extends PageRouteInfo<void> {
  const SignupRoute({List<PageRouteInfo>? children})
    : super(SignupRoute.name, initialChildren: children);

  static const String name = 'SignupRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SignupScreen();
    },
  );
}

/// generated route for
/// [ThongKeSuatAnScreen]
class ThongKeSuatAnRoute extends PageRouteInfo<void> {
  const ThongKeSuatAnRoute({List<PageRouteInfo>? children})
    : super(ThongKeSuatAnRoute.name, initialChildren: children);

  static const String name = 'ThongKeSuatAnRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ThongKeSuatAnScreen();
    },
  );
}
