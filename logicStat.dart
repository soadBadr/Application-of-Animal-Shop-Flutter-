
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_app/project_final/countStat.dart';


class CounterCubit extends Cubit<CounterState>
{
  static CounterCubit getObject(BuildContext context)
  {
    return BlocProvider.of(context);
  }
      int c=0;
  CounterCubit() : super(InitCounter());

void plusC(){
  c++;
  emit(Plus());
}
  void munsC(){
    c--;
    emit(Muns());
  }
  void resetC(){
    c=0;
    emit(Reset());
  }
}