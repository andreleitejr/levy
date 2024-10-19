import 'package:equatable/equatable.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';

// TODO: INSERIR STATE DE ERRO
class AddressState extends Equatable {
  final List<AddressEntity> addresses;

  const AddressState({
    required this.addresses,
  });

  const AddressState.initial({
    this.addresses = const [],
  });

  @override
  List<Object> get props => [addresses];
}
