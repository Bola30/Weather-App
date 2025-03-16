part of 'weather_cubit_cubit.dart';

sealed class WeatherCubitState extends Equatable {
  const WeatherCubitState();

  @override
  List<Object> get props => [];
}

final class WeatherCubitInitial extends WeatherCubitState {}
