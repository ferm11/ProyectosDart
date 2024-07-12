import 'package:ddi_phone/domain/entities/user.dart';
import 'package:ddi_phone/domain/repositories/user_repository.dart';
import 'package:ddi_phone/infraestructure/data_sources/user_data_sources.dart';
import 'package:ddi_phone/infraestructure/models/user_model.dart';

class UserRepositoryImpl implements UserRepository{
  final UserDataSource dataSource;

  UserRepositoryImpl(this.dataSource);

  @override
  Future<User> getUser(String id) async{
    final UserModel = await dataSource.fetchUser(id);
    return UserModel;
  }
}