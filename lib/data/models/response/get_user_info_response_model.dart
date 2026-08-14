import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:projects_for_mobile/data/models/response/user_model.dart';
part 'get_user_info_response_model.freezed.dart';
part 'get_user_info_response_model.g.dart';
@freezed
abstract class GetUserInfoResponseModel with _$GetUserInfoResponseModel {
  const factory GetUserInfoResponseModel({
    @JsonKey(name: 'status')
    required int status,

    @JsonKey(name: 'message')
    required String message,

    @JsonKey(name: 'data')
    required UserModel data,
  }) = _GetUserInfoResponseModel;

  factory GetUserInfoResponseModel.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$GetUserInfoResponseModelFromJson(json);
}