class Bundle {
  Map<String, dynamic> _map = {};

  _setValue(var k, var v) => _map[k] = v;

  _getValue(var k) {
    if (!_map.containsKey(k)) {
      return null;
    }
    return _map[k];
  }

  putInt(String k, int v) => _setValue(k, v);

  putString(String k, String v) => _setValue(k, v);

  putBool(String k, bool v) => _setValue(k, v);

  putList<T>(String k, List<T> v) {
    /// 深拷贝 不会改变原页面list值
    _setValue(k, v);
    //_setValue(k, List<T>.generate(v.length, (index)=>v[index],growable: true));
  }

  putData<T>(String k, T v) => _setValue(k, v);

  putMap<K, V>(String k, Map<K, V> v) => _setValue(k, v);

  int getInt(String k, {int defaultV}) {
    if (_getValue(k) is int) {
      return _getValue(k);
    } else {
      return defaultV;
    }
  }

  String getString(String k, {String defaultV}) {
    if (_getValue(k) is String) {
      return _getValue(k);
    } else {
      return defaultV;
    }
  }

  bool getBool(String k, {bool defaultV}) {
    if (_getValue(k) is bool) {
      return _getValue(k);
    } else {
      return defaultV;
    }
  }

  List getList(String k) => _getValue(k) as List;

  T getData<T>(String k, {T defaultV}) {
    if (_getValue(k) is T) {
      return _getValue(k);
    } else {
      return defaultV;
    }
  }

  Map getMap(String k) => _getValue(k) as Map;

  @override
  String toString() {
    return _map.toString();
  }
}
