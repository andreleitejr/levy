/// Defines the environments where the Injectable can be registered.
abstract class InjectEnv {

  /// Environment for actual implementations.
  static const impl = 'impl';

  /// Environment for mocks implementations.
  static const mock = 'mock';
}
