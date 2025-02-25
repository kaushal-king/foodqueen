enum NetworkState { idle, loading, success, error }

extension NetworkStateExtension on NetworkState {
  bool get isIdle => this == NetworkState.idle;

  bool get isLoading => this == NetworkState.loading;

  bool get isSuccessful => this == NetworkState.success;

  bool get isFailed => this == NetworkState.error;
}

enum SharedPrefsKeys { isLoggedIn }

enum SecureStorageKeys { kAccessToken,ipaddress }

enum Priority { high, medium, low }

enum WorkStatus { todo, doing, done }
