import 'package:bookly_app/Features/Home/Data/Models/BookModel/BookModel.dart';
import 'package:flutter/material.dart';

abstract class GetFeaturedState {
  const GetFeaturedState();
}

class GetFeaturedInitial extends GetFeaturedState {
  const GetFeaturedInitial();
}

class GetFeaturedLoading extends GetFeaturedState {
  const GetFeaturedLoading();
}

class GetFeaturedSuccess extends GetFeaturedState {
  final List<BookModel> books;
  const GetFeaturedSuccess(this.books);
}

class GetFeaturedFailure extends GetFeaturedState {
  final String errorMessage;
  const GetFeaturedFailure(this.errorMessage);
}
