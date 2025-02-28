///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';

import 'strings.g.dart';

// Path: <root>
class TranslationsPt implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.pt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPt _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsCommonsPt commons = _TranslationsCommonsPt._(_root);
	@override late final _TranslationsAddressPt address = _TranslationsAddressPt._(_root);
	@override late final _TranslationsBusPt bus = _TranslationsBusPt._(_root);
	@override late final _TranslationsHomePt home = _TranslationsHomePt._(_root);
	@override late final _TranslationsMapPt map = _TranslationsMapPt._(_root);
	@override late final _TranslationsNotificationPt notification = _TranslationsNotificationPt._(_root);
	@override late final _TranslationsPaymentPt payment = _TranslationsPaymentPt._(_root);
	@override late final _TranslationsPaymentMethodPt paymentMethod = _TranslationsPaymentMethodPt._(_root);
	@override late final _TranslationsReservationPt reservation = _TranslationsReservationPt._(_root);
	@override late final _TranslationsSeatPt seat = _TranslationsSeatPt._(_root);
	@override late final _TranslationsTimePt time = _TranslationsTimePt._(_root);
	@override late final _TranslationsUserPt user = _TranslationsUserPt._(_root);
}

// Path: commons
class _TranslationsCommonsPt implements TranslationsCommonsEn {
	_TranslationsCommonsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCommonsDepartureTicketPt departureTicket = _TranslationsCommonsDepartureTicketPt._(_root);
	@override late final _TranslationsCommonsReturnTicketPt returnTicket = _TranslationsCommonsReturnTicketPt._(_root);
	@override late final _TranslationsCommonsTimePt time = _TranslationsCommonsTimePt._(_root);
}

// Path: address
class _TranslationsAddressPt implements TranslationsAddressEn {
	_TranslationsAddressPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAddressHeaderPt header = _TranslationsAddressHeaderPt._(_root);
	@override late final _TranslationsAddressSearchInputPt searchInput = _TranslationsAddressSearchInputPt._(_root);
	@override late final _TranslationsAddressErrorsPt errors = _TranslationsAddressErrorsPt._(_root);
}

// Path: bus
class _TranslationsBusPt implements TranslationsBusEn {
	_TranslationsBusPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBusHeaderPt header = _TranslationsBusHeaderPt._(_root);
	@override late final _TranslationsBusResultsPt results = _TranslationsBusResultsPt._(_root);
	@override late final _TranslationsBusSelectedPt selected = _TranslationsBusSelectedPt._(_root);
	@override late final _TranslationsBusButtonPt button = _TranslationsBusButtonPt._(_root);
	@override late final _TranslationsBusErrorsPt errors = _TranslationsBusErrorsPt._(_root);
}

// Path: home
class _TranslationsHomePt implements TranslationsHomeEn {
	_TranslationsHomePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeHeaderPt header = _TranslationsHomeHeaderPt._(_root);
	@override late final _TranslationsHomeGuestPt guest = _TranslationsHomeGuestPt._(_root);
	@override late final _TranslationsHomeFormPt form = _TranslationsHomeFormPt._(_root);
	@override late final _TranslationsHomeReservationPt reservation = _TranslationsHomeReservationPt._(_root);
}

// Path: map
class _TranslationsMapPt implements TranslationsMapEn {
	_TranslationsMapPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMapHeaderPt header = _TranslationsMapHeaderPt._(_root);
	@override late final _TranslationsMapInactivePt inactive = _TranslationsMapInactivePt._(_root);
}

// Path: notification
class _TranslationsNotificationPt implements TranslationsNotificationEn {
	_TranslationsNotificationPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationHeaderPt header = _TranslationsNotificationHeaderPt._(_root);
}

// Path: payment
class _TranslationsPaymentPt implements TranslationsPaymentEn {
	_TranslationsPaymentPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaymentHeaderPt header = _TranslationsPaymentHeaderPt._(_root);
	@override late final _TranslationsPaymentPaymentMethodPt paymentMethod = _TranslationsPaymentPaymentMethodPt._(_root);
	@override late final _TranslationsPaymentPriceInfoPt priceInfo = _TranslationsPaymentPriceInfoPt._(_root);
	@override late final _TranslationsPaymentButtonPt button = _TranslationsPaymentButtonPt._(_root);
}

// Path: paymentMethod
class _TranslationsPaymentMethodPt implements TranslationsPaymentMethodEn {
	_TranslationsPaymentMethodPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaymentMethodHeaderPt header = _TranslationsPaymentMethodHeaderPt._(_root);
}

// Path: reservation
class _TranslationsReservationPt implements TranslationsReservationEn {
	_TranslationsReservationPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReservationHeaderPt header = _TranslationsReservationHeaderPt._(_root);
	@override late final _TranslationsReservationInactivePt inactive = _TranslationsReservationInactivePt._(_root);
}

// Path: seat
class _TranslationsSeatPt implements TranslationsSeatEn {
	_TranslationsSeatPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSeatHeaderPt header = _TranslationsSeatHeaderPt._(_root);
	@override late final _TranslationsSeatDescriptionsPt descriptions = _TranslationsSeatDescriptionsPt._(_root);
	@override late final _TranslationsSeatButtonPt button = _TranslationsSeatButtonPt._(_root);
}

// Path: time
class _TranslationsTimePt implements TranslationsTimeEn {
	_TranslationsTimePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsTimeHeaderPt header = _TranslationsTimeHeaderPt._(_root);
	@override late final _TranslationsTimeButtonPt button = _TranslationsTimeButtonPt._(_root);
}

// Path: user
class _TranslationsUserPt implements TranslationsUserEn {
	_TranslationsUserPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUserHeaderPt header = _TranslationsUserHeaderPt._(_root);
	@override late final _TranslationsUserItemsPt items = _TranslationsUserItemsPt._(_root);
}

// Path: commons.departureTicket
class _TranslationsCommonsDepartureTicketPt implements TranslationsCommonsDepartureTicketEn {
	_TranslationsCommonsDepartureTicketPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bilhete de Ida';
}

// Path: commons.returnTicket
class _TranslationsCommonsReturnTicketPt implements TranslationsCommonsReturnTicketEn {
	_TranslationsCommonsReturnTicketPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bilhete de Volta';
}

// Path: commons.time
class _TranslationsCommonsTimePt implements TranslationsCommonsTimeEn {
	_TranslationsCommonsTimePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get hour => 'Hora';
	@override String get hours => 'Horas';
	@override String get minute => 'Minuto';
	@override String get minutes => 'Minutos';
}

// Path: address.header
class _TranslationsAddressHeaderPt implements TranslationsAddressHeaderEn {
	_TranslationsAddressHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Selecionar Endereço';
}

// Path: address.searchInput
class _TranslationsAddressSearchInputPt implements TranslationsAddressSearchInputEn {
	_TranslationsAddressSearchInputPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get hintText => 'Qual é o seu endereço?';
}

// Path: address.errors
class _TranslationsAddressErrorsPt implements TranslationsAddressErrorsEn {
	_TranslationsAddressErrorsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get loadError => 'Falha ao carregar os endereços.';
}

// Path: bus.header
class _TranslationsBusHeaderPt implements TranslationsBusHeaderEn {
	_TranslationsBusHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get departureTitle => 'Selecionar Ida';
	@override String get returnTitle => 'Selecionar Volta';
}

// Path: bus.results
class _TranslationsBusResultsPt implements TranslationsBusResultsEn {
	_TranslationsBusResultsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Melhor Rota';
}

// Path: bus.selected
class _TranslationsBusSelectedPt implements TranslationsBusSelectedEn {
	_TranslationsBusSelectedPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informações da Partida';
}

// Path: bus.button
class _TranslationsBusButtonPt implements TranslationsBusButtonEn {
	_TranslationsBusButtonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Selecionar';
}

// Path: bus.errors
class _TranslationsBusErrorsPt implements TranslationsBusErrorsEn {
	_TranslationsBusErrorsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get loadError => 'Falha ao carregar os ônibus.';
}

// Path: home.header
class _TranslationsHomeHeaderPt implements TranslationsHomeHeaderEn {
	_TranslationsHomeHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Buscar';
}

// Path: home.guest
class _TranslationsHomeGuestPt implements TranslationsHomeGuestEn {
	_TranslationsHomeGuestPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Usuário Convidado';
}

// Path: home.form
class _TranslationsHomeFormPt implements TranslationsHomeFormEn {
	_TranslationsHomeFormPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeFormInputsPt inputs = _TranslationsHomeFormInputsPt._(_root);
	@override late final _TranslationsHomeFormButtonPt button = _TranslationsHomeFormButtonPt._(_root);
}

// Path: home.reservation
class _TranslationsHomeReservationPt implements TranslationsHomeReservationEn {
	_TranslationsHomeReservationPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeReservationWarningPt warning = _TranslationsHomeReservationWarningPt._(_root);
	@override late final _TranslationsHomeReservationTicketPt ticket = _TranslationsHomeReservationTicketPt._(_root);
}

// Path: map.header
class _TranslationsMapHeaderPt implements TranslationsMapHeaderEn {
	_TranslationsMapHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mapa';
}

// Path: map.inactive
class _TranslationsMapInactivePt implements TranslationsMapInactiveEn {
	_TranslationsMapInactivePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nenhuma viagem ativa';
	@override String get description => 'Você não tem nenhuma reserva. Faça uma compra para ver seu ônibus no mapa.';
	@override String get buttonText => 'Clique aqui para fazer uma reserva';
}

// Path: notification.header
class _TranslationsNotificationHeaderPt implements TranslationsNotificationHeaderEn {
	_TranslationsNotificationHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificações';
}

// Path: payment.header
class _TranslationsPaymentHeaderPt implements TranslationsPaymentHeaderEn {
	_TranslationsPaymentHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comprar Bilhetes';
}

// Path: payment.paymentMethod
class _TranslationsPaymentPaymentMethodPt implements TranslationsPaymentPaymentMethodEn {
	_TranslationsPaymentPaymentMethodPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Método de Pagamento';
	@override late final _TranslationsPaymentPaymentMethodTextButtonPt textButton = _TranslationsPaymentPaymentMethodTextButtonPt._(_root);
}

// Path: payment.priceInfo
class _TranslationsPaymentPriceInfoPt implements TranslationsPaymentPriceInfoEn {
	_TranslationsPaymentPriceInfoPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Assinatura Mensal';
	@override String get recurrence  => 'mês';
}

// Path: payment.button
class _TranslationsPaymentButtonPt implements TranslationsPaymentButtonEn {
	_TranslationsPaymentButtonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confirmar Pagamento';
}

// Path: paymentMethod.header
class _TranslationsPaymentMethodHeaderPt implements TranslationsPaymentMethodHeaderEn {
	_TranslationsPaymentMethodHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Selecionar Método de Pagamento';
}

// Path: reservation.header
class _TranslationsReservationHeaderPt implements TranslationsReservationHeaderEn {
	_TranslationsReservationHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reserva';
}

// Path: reservation.inactive
class _TranslationsReservationInactivePt implements TranslationsReservationInactiveEn {
	_TranslationsReservationInactivePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nenhum bilhete disponível';
	@override String get description => 'Você não tem bilhetes. Faça uma compra e volte.';
	@override String get buttonText => 'Clique aqui para comprar seus bilhetes';
}

// Path: seat.header
class _TranslationsSeatHeaderPt implements TranslationsSeatHeaderEn {
	_TranslationsSeatHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Selecionar Assento';
}

// Path: seat.descriptions
class _TranslationsSeatDescriptionsPt implements TranslationsSeatDescriptionsEn {
	_TranslationsSeatDescriptionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get selected => 'Selecionado';
	@override String get available => 'Disponível';
	@override String get unavailable => 'Indisponível';
}

// Path: seat.button
class _TranslationsSeatButtonPt implements TranslationsSeatButtonEn {
	_TranslationsSeatButtonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confirmar Assento';
}

// Path: time.header
class _TranslationsTimeHeaderPt implements TranslationsTimeHeaderEn {
	_TranslationsTimeHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Selecionar Horário';
}

// Path: time.button
class _TranslationsTimeButtonPt implements TranslationsTimeButtonEn {
	_TranslationsTimeButtonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confirmar';
}

// Path: user.header
class _TranslationsUserHeaderPt implements TranslationsUserHeaderEn {
	_TranslationsUserHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfil';
	@override String get welcome => 'Bem-vindo';
}

// Path: user.items
class _TranslationsUserItemsPt implements TranslationsUserItemsEn {
	_TranslationsUserItemsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUserItemsAccountPt account = _TranslationsUserItemsAccountPt._(_root);
	@override late final _TranslationsUserItemsReservationsPt reservations = _TranslationsUserItemsReservationsPt._(_root);
	@override late final _TranslationsUserItemsConfigurationsPt configurations = _TranslationsUserItemsConfigurationsPt._(_root);
	@override late final _TranslationsUserItemsSupportPt support = _TranslationsUserItemsSupportPt._(_root);
	@override late final _TranslationsUserItemsAboutPt about = _TranslationsUserItemsAboutPt._(_root);
}

// Path: home.form.inputs
class _TranslationsHomeFormInputsPt implements TranslationsHomeFormInputsEn {
	_TranslationsHomeFormInputsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeFormInputsDepartureAddressPt departureAddress = _TranslationsHomeFormInputsDepartureAddressPt._(_root);
	@override late final _TranslationsHomeFormInputsReturnAddressPt returnAddress = _TranslationsHomeFormInputsReturnAddressPt._(_root);
	@override late final _TranslationsHomeFormInputsDepartureTimePt departureTime = _TranslationsHomeFormInputsDepartureTimePt._(_root);
	@override late final _TranslationsHomeFormInputsReturnTimePt returnTime = _TranslationsHomeFormInputsReturnTimePt._(_root);
}

// Path: home.form.button
class _TranslationsHomeFormButtonPt implements TranslationsHomeFormButtonEn {
	_TranslationsHomeFormButtonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Buscar';
}

// Path: home.reservation.warning
class _TranslationsHomeReservationWarningPt implements TranslationsHomeReservationWarningEn {
	_TranslationsHomeReservationWarningPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seu ônibus está a caminho';
	@override String get textButton => 'Ver no mapa';
	@override String description({required Object time}) => 'Seu ônibus chegará em ${time}...';
}

// Path: home.reservation.ticket
class _TranslationsHomeReservationTicketPt implements TranslationsHomeReservationTicketEn {
	_TranslationsHomeReservationTicketPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Próxima Viagem';
}

// Path: payment.paymentMethod.textButton
class _TranslationsPaymentPaymentMethodTextButtonPt implements TranslationsPaymentPaymentMethodTextButtonEn {
	_TranslationsPaymentPaymentMethodTextButtonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modificar';
}

// Path: user.items.account
class _TranslationsUserItemsAccountPt implements TranslationsUserItemsAccountEn {
	_TranslationsUserItemsAccountPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conta';
	@override String get description => 'Informações sobre sua conta';
}

// Path: user.items.reservations
class _TranslationsUserItemsReservationsPt implements TranslationsUserItemsReservationsEn {
	_TranslationsUserItemsReservationsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reservas';
	@override String get description => 'Informações sobre suas reservas';
}

// Path: user.items.configurations
class _TranslationsUserItemsConfigurationsPt implements TranslationsUserItemsConfigurationsEn {
	_TranslationsUserItemsConfigurationsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preferências e Configurações';
	@override String get description => 'Gerencie suas preferências e configurações';
}

// Path: user.items.support
class _TranslationsUserItemsSupportPt implements TranslationsUserItemsSupportEn {
	_TranslationsUserItemsSupportPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suporte';
	@override String get description => 'Conte-nos seu problema e ajudaremos você';
}

// Path: user.items.about
class _TranslationsUserItemsAboutPt implements TranslationsUserItemsAboutEn {
	_TranslationsUserItemsAboutPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobre o Levy';
	@override String get description => 'Saiba mais sobre nosso aplicativo';
}

// Path: home.form.inputs.departureAddress
class _TranslationsHomeFormInputsDepartureAddressPt implements TranslationsHomeFormInputsDepartureAddressEn {
	_TranslationsHomeFormInputsDepartureAddressPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get labelText => 'Endereço de Partida';
	@override String get hintText => 'Selecione seu endereço de partida';
}

// Path: home.form.inputs.returnAddress
class _TranslationsHomeFormInputsReturnAddressPt implements TranslationsHomeFormInputsReturnAddressEn {
	_TranslationsHomeFormInputsReturnAddressPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get labelText => 'Endereço de Retorno';
	@override String get hintText => 'Selecione seu endereço de retorno';
}

// Path: home.form.inputs.departureTime
class _TranslationsHomeFormInputsDepartureTimePt implements TranslationsHomeFormInputsDepartureTimeEn {
	_TranslationsHomeFormInputsDepartureTimePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get labelText => 'Horário de Partida';
	@override String get hintText => '05:00';
}

// Path: home.form.inputs.returnTime
class _TranslationsHomeFormInputsReturnTimePt implements TranslationsHomeFormInputsReturnTimeEn {
	_TranslationsHomeFormInputsReturnTimePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get labelText => 'Horário de Retorno';
	@override String get hintText => '17:30';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsPt {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'commons.departureTicket.title': return 'Bilhete de Ida';
			case 'commons.returnTicket.title': return 'Bilhete de Volta';
			case 'commons.time.hour': return 'Hora';
			case 'commons.time.hours': return 'Horas';
			case 'commons.time.minute': return 'Minuto';
			case 'commons.time.minutes': return 'Minutos';
			case 'address.header.title': return 'Selecionar Endereço';
			case 'address.searchInput.hintText': return 'Qual é o seu endereço?';
			case 'address.errors.loadError': return 'Falha ao carregar os endereços.';
			case 'bus.header.departureTitle': return 'Selecionar Ida';
			case 'bus.header.returnTitle': return 'Selecionar Volta';
			case 'bus.results.title': return 'Melhor Rota';
			case 'bus.selected.title': return 'Informações da Partida';
			case 'bus.button.title': return 'Selecionar';
			case 'bus.errors.loadError': return 'Falha ao carregar os ônibus.';
			case 'home.header.title': return 'Buscar';
			case 'home.guest.title': return 'Usuário Convidado';
			case 'home.form.inputs.departureAddress.labelText': return 'Endereço de Partida';
			case 'home.form.inputs.departureAddress.hintText': return 'Selecione seu endereço de partida';
			case 'home.form.inputs.returnAddress.labelText': return 'Endereço de Retorno';
			case 'home.form.inputs.returnAddress.hintText': return 'Selecione seu endereço de retorno';
			case 'home.form.inputs.departureTime.labelText': return 'Horário de Partida';
			case 'home.form.inputs.departureTime.hintText': return '05:00';
			case 'home.form.inputs.returnTime.labelText': return 'Horário de Retorno';
			case 'home.form.inputs.returnTime.hintText': return '17:30';
			case 'home.form.button.title': return 'Buscar';
			case 'home.reservation.warning.title': return 'Seu ônibus está a caminho';
			case 'home.reservation.warning.textButton': return 'Ver no mapa';
			case 'home.reservation.warning.description': return ({required Object time}) => 'Seu ônibus chegará em ${time}...';
			case 'home.reservation.ticket.title': return 'Próxima Viagem';
			case 'map.header.title': return 'Mapa';
			case 'map.inactive.title': return 'Nenhuma viagem ativa';
			case 'map.inactive.description': return 'Você não tem nenhuma reserva. Faça uma compra para ver seu ônibus no mapa.';
			case 'map.inactive.buttonText': return 'Clique aqui para fazer uma reserva';
			case 'notification.header.title': return 'Notificações';
			case 'payment.header.title': return 'Comprar Bilhetes';
			case 'payment.paymentMethod.title': return 'Método de Pagamento';
			case 'payment.paymentMethod.textButton.title': return 'Modificar';
			case 'payment.priceInfo.title': return 'Assinatura Mensal';
			case 'payment.priceInfo.recurrence ': return 'mês';
			case 'payment.button.title': return 'Confirmar Pagamento';
			case 'paymentMethod.header.title': return 'Selecionar Método de Pagamento';
			case 'reservation.header.title': return 'Reserva';
			case 'reservation.inactive.title': return 'Nenhum bilhete disponível';
			case 'reservation.inactive.description': return 'Você não tem bilhetes. Faça uma compra e volte.';
			case 'reservation.inactive.buttonText': return 'Clique aqui para comprar seus bilhetes';
			case 'seat.header.title': return 'Selecionar Assento';
			case 'seat.descriptions.selected': return 'Selecionado';
			case 'seat.descriptions.available': return 'Disponível';
			case 'seat.descriptions.unavailable': return 'Indisponível';
			case 'seat.button.title': return 'Confirmar Assento';
			case 'time.header.title': return 'Selecionar Horário';
			case 'time.button.title': return 'Confirmar';
			case 'user.header.title': return 'Perfil';
			case 'user.header.welcome': return 'Bem-vindo';
			case 'user.items.account.title': return 'Conta';
			case 'user.items.account.description': return 'Informações sobre sua conta';
			case 'user.items.reservations.title': return 'Reservas';
			case 'user.items.reservations.description': return 'Informações sobre suas reservas';
			case 'user.items.configurations.title': return 'Preferências e Configurações';
			case 'user.items.configurations.description': return 'Gerencie suas preferências e configurações';
			case 'user.items.support.title': return 'Suporte';
			case 'user.items.support.description': return 'Conte-nos seu problema e ajudaremos você';
			case 'user.items.about.title': return 'Sobre o Levy';
			case 'user.items.about.description': return 'Saiba mais sobre nosso aplicativo';
			default: return null;
		}
	}
}
