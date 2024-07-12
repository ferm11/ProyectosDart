import 'package:ddi_phone/domain/entities/user.dart';
import 'package:ddi_phone/domain/repositories/user_repository.dart';

class GetUser{
  final UserRepository;
  GetUser(this.UserRepository);

  Future<User> call(String id) async{
    return await UserRepository.getUser(id);
  }
}