import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
final class Env {
  @EnviedField(varName: 'POCKET_BASE_URL')
  static final Uri pocketBaseUrl = _Env.pocketBaseUrl;
}
