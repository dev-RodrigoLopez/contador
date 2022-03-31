// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.


import 'package:counter/app/view/app.dart';
import 'package:counter/bootstrap.dart';
import 'package:counter/data/provider/local/global_bloc/global_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  bootstrap(() => const App());
 
}
