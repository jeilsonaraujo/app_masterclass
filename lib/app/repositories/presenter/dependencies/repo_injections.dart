import 'package:app_masterclass/app/about/blocs/bloc_about/about_bloc.dart';
import 'package:app_masterclass/app/repositories/presenter/bloc/repository_bloc.dart';

class RepoInjection {
  final BlocRepository repoBloc;

  RepoInjection({required this.repoBloc});
}
