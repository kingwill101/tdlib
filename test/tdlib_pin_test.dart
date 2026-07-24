import 'dart:io';

import 'package:tdlib/src/tdlib_source.dart';
import 'package:test/test.dart';

void main() {
  test('schema and native builders use the same TDLib commit', () {
    final schemaCommit = File(
      'tool/schema/td_api.tl.commit',
    ).readAsStringSync().trim();

    expect(schemaCommit, kTDLibCommit);
  });
}
