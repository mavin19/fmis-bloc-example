import 'package:dio/dio.dart';
import 'package:fmis_portal/Model/login_model.dart';
import 'package:fmis_portal/Model/login_res_body.dart';
import 'package:fmis_portal/Model/user_model.dart';
import 'package:fmis_portal/Utils/constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

part 'apiservice.g.dart';

@RestApi(baseUrl: apiUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  static ApiService create() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger(
      requestBody: true,
    ));
    return ApiService(dio);
  }

  @GET('')
  Future<List<UserModel>> getUser();

  @POST('/users/login')
  Future<LoginResBody> login(@Body() LoginModel login);
}
