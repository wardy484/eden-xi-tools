// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_details_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String $PlayerDetailsControllerHash() =>
    r'f6ef7b0750ad9b8dd5f309093a3b6b4832619a9a';

/// See also [PlayerDetailsController].
class PlayerDetailsControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PlayerDetailsController,
        PlayerDetails> {
  PlayerDetailsControllerProvider(
    this.playerName,
  ) : super(
          () => PlayerDetailsController()..playerName = playerName,
          from: playerDetailsControllerProvider,
          name: r'playerDetailsControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $PlayerDetailsControllerHash,
        );

  final String playerName;

  @override
  bool operator ==(Object other) {
    return other is PlayerDetailsControllerProvider &&
        other.playerName == playerName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, playerName.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<PlayerDetails> runNotifierBuild(
    covariant _$PlayerDetailsController notifier,
  ) {
    return notifier.build(
      playerName,
    );
  }
}

typedef PlayerDetailsControllerRef
    = AutoDisposeAsyncNotifierProviderRef<PlayerDetails>;

/// See also [PlayerDetailsController].
final playerDetailsControllerProvider = PlayerDetailsControllerFamily();

class PlayerDetailsControllerFamily extends Family<AsyncValue<PlayerDetails>> {
  PlayerDetailsControllerFamily();

  PlayerDetailsControllerProvider call(
    String playerName,
  ) {
    return PlayerDetailsControllerProvider(
      playerName,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<PlayerDetailsController, PlayerDetails>
      getProviderOverride(
    covariant PlayerDetailsControllerProvider provider,
  ) {
    return call(
      provider.playerName,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'playerDetailsControllerProvider';
}

abstract class _$PlayerDetailsController
    extends BuildlessAutoDisposeAsyncNotifier<PlayerDetails> {
  late final String playerName;

  FutureOr<PlayerDetails> build(
    String playerName,
  );
}
