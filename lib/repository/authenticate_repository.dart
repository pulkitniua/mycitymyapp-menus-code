import 'package:mobile_app/model/request/request_info_model.dart';
import 'package:mobile_app/services/base_service.dart';
import 'package:mobile_app/utils/constants/api_constants.dart';
import 'package:mobile_app/utils/enums/app_enums.dart';
import 'package:mobile_app/utils/utils.dart';

class AuthenticateRepository {
  static final BaseService _baseService = BaseService();

  static Future<dynamic> login({
    required Map body,
    required query,
  }) async {
    final response = await _baseService.makeRequest(
      url: UserUrl.USER_OTP,
      body: body,
      method: RequestType.POST,
      queryParameters: query,
    );

    if (response != null) {
      return response;
    }
  }

  static Future<dynamic> validateOtp({
    required Map body,
    required Map<String, String> headers,
  }) async {
    final response = await _baseService.makeRequest(
      url: UserUrl.AUTHENTICATE,
      body: body,
      headers: headers,
      method: RequestType.POST,
    );

    if (response != null) {
      return response;
    }
  }

  static Future<dynamic> signUpOTP({
    required Map body,
    required query,
  }) async {
    final response = await _baseService.makeRequest(
      url: UserUrl.USER_OTP,
      body: body,
      method: RequestType.POST,
      queryParameters: query,
    );

    if (response != null) {
      return response;
    }
  }

  static Future<dynamic> createUser({
    required body,
    required query,
  }) async {
    final local = await getLocal();
    final response = await _baseService.makeRequest(
      url: UserUrl.CREATE_USER,
      body: body,
      method: RequestType.POST,
      queryParameters: query,
      requestInfo: RequestInfo(
        local: local,
      ),
    );

    if (response != null) {
      return response;
    }
  }

}
