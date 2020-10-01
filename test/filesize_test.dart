import 'package:test/test.dart';
import 'package:filesize/filesize.dart';

void main() {
  test('10', () {
    expect(filesize(10), '10 B');
  });

  test('10 string', () {
    expect(filesize('10'), '10 B');
  });

  test('1024', () {
    expect(filesize(1024), '1 KB');
  });

  test('1024 string', () {
    expect(filesize('1024'), '1 KB');
  });

  test('1M', () {
    expect(filesize(1024 * 1024), '1 MB');
  });

  test('1G', () {
    expect(filesize(1024 * 1024 * 1024), '1 GB');
  });

  test('1T', () {
    expect(filesize(1024 * 1024 * 1024 * 1024), '1 TB');
  });

  test('1P', () {
    expect(filesize(1024 * 1024 * 1024 * 1024 * 1024), '1 PB');
  });
}
