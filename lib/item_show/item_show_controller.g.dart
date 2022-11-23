// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_show_controller.dart';

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

String $ItemShowControllerHash() => r'55b0a770c1de58590f7d3812ee3c05d6701ba729';

/// See also [ItemShowController].
class ItemShowControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<
    ItemShowController, ItemDetails> {
  ItemShowControllerProvider(
    this.itemKey, {
    this.stacked = false,
  }) : super(
          () => ItemShowController()
            ..itemKey = itemKey
            ..stacked = stacked,
          from: itemShowControllerProvider,
          name: r'itemShowControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $ItemShowControllerHash,
        );

  final int itemKey;
  final bool stacked;

  @override
  bool operator ==(Object other) {
    return other is ItemShowControllerProvider &&
        other.itemKey == itemKey &&
        other.stacked == stacked;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, itemKey.hashCode);
    hash = _SystemHash.combine(hash, stacked.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<ItemDetails> runNotifierBuild(
    covariant _$ItemShowController notifier,
  ) {
    return notifier.build(
      itemKey,
      stacked: stacked,
    );
  }
}

typedef ItemShowControllerRef
    = AutoDisposeAsyncNotifierProviderRef<ItemDetails>;

/// See also [ItemShowController].
final itemShowControllerProvider = ItemShowControllerFamily();

class ItemShowControllerFamily extends Family<AsyncValue<ItemDetails>> {
  ItemShowControllerFamily();

  ItemShowControllerProvider call(
    int itemKey, {
    bool stacked = false,
  }) {
    return ItemShowControllerProvider(
      itemKey,
      stacked: stacked,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<ItemShowController, ItemDetails>
      getProviderOverride(
    covariant ItemShowControllerProvider provider,
  ) {
    return call(
      provider.itemKey,
      stacked: provider.stacked,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'itemShowControllerProvider';
}

abstract class _$ItemShowController
    extends BuildlessAutoDisposeAsyncNotifier<ItemDetails> {
  late final int itemKey;
  late final bool stacked;

  FutureOr<ItemDetails> build(
    int itemKey, {
    bool stacked = false,
  });
}
