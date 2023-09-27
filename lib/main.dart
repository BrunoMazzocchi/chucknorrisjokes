
import 'package:chucknorrisjokes/app.dart';
import 'package:chucknorrisjokes/utils/api/api_constants.dart';
import 'package:chucknorrisjokes/utils/bloc_wrapper.dart';
import 'package:chucknorrisjokes/utils/data_provider.dart';
import 'package:chucknorrisjokes/utils/repository_wrapper.dart';
import 'package:flutter/material.dart';

void main () {
  runApp( 
    const DataProvider(
      baseUrl: ApiConstants.baseUrl,
      child: RepositoryWrapper(
        child: BlocWrapper(
          child: App(),
        ),
      ),
    )
  );
}