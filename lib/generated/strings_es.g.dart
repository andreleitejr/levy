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
class TranslationsEs implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEs _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsCommonsEs commons = _TranslationsCommonsEs._(_root);
	@override late final _TranslationsAddressEs address = _TranslationsAddressEs._(_root);
	@override late final _TranslationsBusEs bus = _TranslationsBusEs._(_root);
	@override late final _TranslationsHomeEs home = _TranslationsHomeEs._(_root);
	@override late final _TranslationsMapEs map = _TranslationsMapEs._(_root);
	@override late final _TranslationsNotificationEs notification = _TranslationsNotificationEs._(_root);
	@override late final _TranslationsPaymentEs payment = _TranslationsPaymentEs._(_root);
	@override late final _TranslationsPaymentMethodEs paymentMethod = _TranslationsPaymentMethodEs._(_root);
	@override late final _TranslationsReservationEs reservation = _TranslationsReservationEs._(_root);
	@override late final _TranslationsSeatEs seat = _TranslationsSeatEs._(_root);
	@override late final _TranslationsTimeEs time = _TranslationsTimeEs._(_root);
	@override late final _TranslationsUserEs user = _TranslationsUserEs._(_root);
}

// Path: commons
class _TranslationsCommonsEs implements TranslationsCommonsEn {
	_TranslationsCommonsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCommonsDepartureTicketEs departureTicket = _TranslationsCommonsDepartureTicketEs._(_root);
	@override late final _TranslationsCommonsReturnTicketEs returnTicket = _TranslationsCommonsReturnTicketEs._(_root);
	@override late final _TranslationsCommonsTimeEs time = _TranslationsCommonsTimeEs._(_root);
}

// Path: address
class _TranslationsAddressEs implements TranslationsAddressEn {
	_TranslationsAddressEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAddressHeaderEs header = _TranslationsAddressHeaderEs._(_root);
	@override late final _TranslationsAddressSearchInputEs searchInput = _TranslationsAddressSearchInputEs._(_root);
}

// Path: bus
class _TranslationsBusEs implements TranslationsBusEn {
	_TranslationsBusEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBusHeaderEs header = _TranslationsBusHeaderEs._(_root);
	@override late final _TranslationsBusResultsEs results = _TranslationsBusResultsEs._(_root);
	@override late final _TranslationsBusSelectedEs selected = _TranslationsBusSelectedEs._(_root);
	@override late final _TranslationsBusButtonEs button = _TranslationsBusButtonEs._(_root);
}

// Path: home
class _TranslationsHomeEs implements TranslationsHomeEn {
	_TranslationsHomeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeHeaderEs header = _TranslationsHomeHeaderEs._(_root);
	@override late final _TranslationsHomeGuestEs guest = _TranslationsHomeGuestEs._(_root);
	@override late final _TranslationsHomeFormEs form = _TranslationsHomeFormEs._(_root);
	@override late final _TranslationsHomeReservationEs reservation = _TranslationsHomeReservationEs._(_root);
}

// Path: map
class _TranslationsMapEs implements TranslationsMapEn {
	_TranslationsMapEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMapHeaderEs header = _TranslationsMapHeaderEs._(_root);
	@override late final _TranslationsMapInactiveEs inactive = _TranslationsMapInactiveEs._(_root);
}

// Path: notification
class _TranslationsNotificationEs implements TranslationsNotificationEn {
	_TranslationsNotificationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationHeaderEs header = _TranslationsNotificationHeaderEs._(_root);
}

// Path: payment
class _TranslationsPaymentEs implements TranslationsPaymentEn {
	_TranslationsPaymentEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaymentHeaderEs header = _TranslationsPaymentHeaderEs._(_root);
	@override late final _TranslationsPaymentPaymentMethodEs paymentMethod = _TranslationsPaymentPaymentMethodEs._(_root);
	@override late final _TranslationsPaymentPriceInfoEs priceInfo = _TranslationsPaymentPriceInfoEs._(_root);
	@override late final _TranslationsPaymentButtonEs button = _TranslationsPaymentButtonEs._(_root);
}

// Path: paymentMethod
class _TranslationsPaymentMethodEs implements TranslationsPaymentMethodEn {
	_TranslationsPaymentMethodEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaymentMethodHeaderEs header = _TranslationsPaymentMethodHeaderEs._(_root);
}

// Path: reservation
class _TranslationsReservationEs implements TranslationsReservationEn {
	_TranslationsReservationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReservationHeaderEs header = _TranslationsReservationHeaderEs._(_root);
	@override late final _TranslationsReservationInactiveEs inactive = _TranslationsReservationInactiveEs._(_root);
}

// Path: seat
class _TranslationsSeatEs implements TranslationsSeatEn {
	_TranslationsSeatEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSeatHeaderEs header = _TranslationsSeatHeaderEs._(_root);
	@override late final _TranslationsSeatDescriptionsEs descriptions = _TranslationsSeatDescriptionsEs._(_root);
	@override late final _TranslationsSeatButtonEs button = _TranslationsSeatButtonEs._(_root);
}

// Path: time
class _TranslationsTimeEs implements TranslationsTimeEn {
	_TranslationsTimeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsTimeHeaderEs header = _TranslationsTimeHeaderEs._(_root);
	@override late final _TranslationsTimeButtonEs button = _TranslationsTimeButtonEs._(_root);
}

// Path: user
class _TranslationsUserEs implements TranslationsUserEn {
	_TranslationsUserEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUserHeaderEs header = _TranslationsUserHeaderEs._(_root);
	@override late final _TranslationsUserItemsEs items = _TranslationsUserItemsEs._(_root);
}

// Path: commons.departureTicket
class _TranslationsCommonsDepartureTicketEs implements TranslationsCommonsDepartureTicketEn {
	_TranslationsCommonsDepartureTicketEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Boleto de ida';
}

// Path: commons.returnTicket
class _TranslationsCommonsReturnTicketEs implements TranslationsCommonsReturnTicketEn {
	_TranslationsCommonsReturnTicketEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Boleto de regreso';
}

// Path: commons.time
class _TranslationsCommonsTimeEs implements TranslationsCommonsTimeEn {
	_TranslationsCommonsTimeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get hours => 'Horas';
	@override String get minutes => 'Minutos';
}

// Path: address.header
class _TranslationsAddressHeaderEs implements TranslationsAddressHeaderEn {
	_TranslationsAddressHeaderEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seleccionar dirección';
}

// Path: address.searchInput
class _TranslationsAddressSearchInputEs implements TranslationsAddressSearchInputEn {
	_TranslationsAddressSearchInputEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get hintText => '¿Cuál es tu dirección?';
}

// Path: bus.header
class _TranslationsBusHeaderEs implements TranslationsBusHeaderEn {
	_TranslationsBusHeaderEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get departureTitle => 'Seleccionar autobús de ida';
	@override String get returnTitle => 'Seleccionar autobús de regreso';
}

// Path: bus.results
class _TranslationsBusResultsEs implements TranslationsBusResultsEn {
	_TranslationsBusResultsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mejor ruta';
}

// Path: bus.selected
class _TranslationsBusSelectedEs implements TranslationsBusSelectedEn {
	_TranslationsBusSelectedEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Información de salida';
}

// Path: bus.button
class _TranslationsBusButtonEs implements TranslationsBusButtonEn {
	_TranslationsBusButtonEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seleccionar';
}

// Path: home.header
class _TranslationsHomeHeaderEs implements TranslationsHomeHeaderEn {
	_TranslationsHomeHeaderEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Buscar';
}

// Path: home.guest
class _TranslationsHomeGuestEs implements TranslationsHomeGuestEn {
	_TranslationsHomeGuestEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Usuario invitado';
}

// Path: home.form
class _TranslationsHomeFormEs implements TranslationsHomeFormEn {
	_TranslationsHomeFormEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeFormInputsEs inputs = _TranslationsHomeFormInputsEs._(_root);
	@override late final _TranslationsHomeFormButtonEs button = _TranslationsHomeFormButtonEs._(_root);
}

// Path: home.reservation
class _TranslationsHomeReservationEs implements TranslationsHomeReservationEn {
	_TranslationsHomeReservationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeReservationWarningEs warning = _TranslationsHomeReservationWarningEs._(_root);
	@override late final _TranslationsHomeReservationTicketEs ticket = _TranslationsHomeReservationTicketEs._(_root);
}

// Path: map.header
class _TranslationsMapHeaderEs implements TranslationsMapHeaderEn {
	_TranslationsMapHeaderEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mapa';
}

// Path: map.inactive
class _TranslationsMapInactiveEs implements TranslationsMapInactiveEn {
	_TranslationsMapInactiveEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No hay viajes activos';
	@override String get description => 'No tienes ninguna reserva. Realiza una compra para ver tu autobús en el mapa.';
	@override String get buttonText => 'Haz clic aquí para hacer una reserva';
}

// Path: notification.header
class _TranslationsNotificationHeaderEs implements TranslationsNotificationHeaderEn {
	_TranslationsNotificationHeaderEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificaciones';
}

// Path: payment.header
class _TranslationsPaymentHeaderEs implements TranslationsPaymentHeaderEn {
	_TranslationsPaymentHeaderEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comprar boletos';
}

// Path: payment.paymentMethod
class _TranslationsPaymentPaymentMethodEs implements TranslationsPaymentPaymentMethodEn {
	_TranslationsPaymentPaymentMethodEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Método de pago';
	@override late final _TranslationsPaymentPaymentMethodTextButtonEs textButton = _TranslationsPaymentPaymentMethodTextButtonEs._(_root);
}

// Path: payment.priceInfo
class _TranslationsPaymentPriceInfoEs implements TranslationsPaymentPriceInfoEn {
	_TranslationsPaymentPriceInfoEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suscripción mensual';
	@override String get recurrence  => 'mes';
}

// Path: payment.button
class _TranslationsPaymentButtonEs implements TranslationsPaymentButtonEn {
	_TranslationsPaymentButtonEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confirmar pago';
}

// Path: paymentMethod.header
class _TranslationsPaymentMethodHeaderEs implements TranslationsPaymentMethodHeaderEn {
	_TranslationsPaymentMethodHeaderEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seleccionar método de pago';
}

// Path: reservation.header
class _TranslationsReservationHeaderEs implements TranslationsReservationHeaderEn {
	_TranslationsReservationHeaderEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reservación';
}

// Path: reservation.inactive
class _TranslationsReservationInactiveEs implements TranslationsReservationInactiveEn {
	_TranslationsReservationInactiveEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No hay boletos disponibles';
	@override String get description => 'No tienes boletos. Realiza una compra y regresa.';
	@override String get buttonText => 'Haz clic aquí para comprar tus boletos';
}

// Path: seat.header
class _TranslationsSeatHeaderEs implements TranslationsSeatHeaderEn {
	_TranslationsSeatHeaderEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seleccionar asiento';
}

// Path: seat.descriptions
class _TranslationsSeatDescriptionsEs implements TranslationsSeatDescriptionsEn {
	_TranslationsSeatDescriptionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get selected => 'Seleccionado';
	@override String get available => 'Disponible';
	@override String get unavailable => 'No disponible';
}

// Path: seat.button
class _TranslationsSeatButtonEs implements TranslationsSeatButtonEn {
	_TranslationsSeatButtonEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confirmar asiento';
}

// Path: time.header
class _TranslationsTimeHeaderEs implements TranslationsTimeHeaderEn {
	_TranslationsTimeHeaderEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seleccionar hora';
}

// Path: time.button
class _TranslationsTimeButtonEs implements TranslationsTimeButtonEn {
	_TranslationsTimeButtonEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confirmar';
}

// Path: user.header
class _TranslationsUserHeaderEs implements TranslationsUserHeaderEn {
	_TranslationsUserHeaderEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfil';
	@override String get welcome => 'Bienvenido';
}

// Path: user.items
class _TranslationsUserItemsEs implements TranslationsUserItemsEn {
	_TranslationsUserItemsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUserItemsAccountEs account = _TranslationsUserItemsAccountEs._(_root);
	@override late final _TranslationsUserItemsReservationsEs reservations = _TranslationsUserItemsReservationsEs._(_root);
	@override late final _TranslationsUserItemsConfigurationsEs configurations = _TranslationsUserItemsConfigurationsEs._(_root);
	@override late final _TranslationsUserItemsSupportEs support = _TranslationsUserItemsSupportEs._(_root);
	@override late final _TranslationsUserItemsAboutEs about = _TranslationsUserItemsAboutEs._(_root);
}

// Path: home.form.inputs
class _TranslationsHomeFormInputsEs implements TranslationsHomeFormInputsEn {
	_TranslationsHomeFormInputsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeFormInputsDepartureAddressEs departureAddress = _TranslationsHomeFormInputsDepartureAddressEs._(_root);
	@override late final _TranslationsHomeFormInputsReturnAddressEs returnAddress = _TranslationsHomeFormInputsReturnAddressEs._(_root);
	@override late final _TranslationsHomeFormInputsDepartureTimeEs departureTime = _TranslationsHomeFormInputsDepartureTimeEs._(_root);
	@override late final _TranslationsHomeFormInputsReturnTimeEs returnTime = _TranslationsHomeFormInputsReturnTimeEs._(_root);
}

// Path: home.form.button
class _TranslationsHomeFormButtonEs implements TranslationsHomeFormButtonEn {
	_TranslationsHomeFormButtonEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Buscar';
}

// Path: home.reservation.warning
class _TranslationsHomeReservationWarningEs implements TranslationsHomeReservationWarningEn {
	_TranslationsHomeReservationWarningEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tu autobús está en camino';
	@override String get textButton => 'Ver en el mapa';
	@override String description({required Object time}) => 'Tu autobús llegará en ${time}...';
}

// Path: home.reservation.ticket
class _TranslationsHomeReservationTicketEs implements TranslationsHomeReservationTicketEn {
	_TranslationsHomeReservationTicketEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Próximo viaje';
}

// Path: payment.paymentMethod.textButton
class _TranslationsPaymentPaymentMethodTextButtonEs implements TranslationsPaymentPaymentMethodTextButtonEn {
	_TranslationsPaymentPaymentMethodTextButtonEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modificar';
}

// Path: user.items.account
class _TranslationsUserItemsAccountEs implements TranslationsUserItemsAccountEn {
	_TranslationsUserItemsAccountEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cuenta';
	@override String get description => 'Información sobre tu cuenta';
}

// Path: user.items.reservations
class _TranslationsUserItemsReservationsEs implements TranslationsUserItemsReservationsEn {
	_TranslationsUserItemsReservationsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reservaciones';
	@override String get description => 'Información sobre tus reservaciones';
}

// Path: user.items.configurations
class _TranslationsUserItemsConfigurationsEs implements TranslationsUserItemsConfigurationsEn {
	_TranslationsUserItemsConfigurationsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preferencias y configuraciones';
	@override String get description => 'Administra tus preferencias y configuraciones';
}

// Path: user.items.support
class _TranslationsUserItemsSupportEs implements TranslationsUserItemsSupportEn {
	_TranslationsUserItemsSupportEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Soporte';
	@override String get description => 'Cuéntanos tu problema y te ayudaremos';
}

// Path: user.items.about
class _TranslationsUserItemsAboutEs implements TranslationsUserItemsAboutEn {
	_TranslationsUserItemsAboutEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Acerca de Levy';
	@override String get description => 'Descubre más sobre nuestra aplicación';
}

// Path: home.form.inputs.departureAddress
class _TranslationsHomeFormInputsDepartureAddressEs implements TranslationsHomeFormInputsDepartureAddressEn {
	_TranslationsHomeFormInputsDepartureAddressEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get labelText => 'Dirección de salida';
	@override String get hintText => 'Selecciona tu dirección de salida';
}

// Path: home.form.inputs.returnAddress
class _TranslationsHomeFormInputsReturnAddressEs implements TranslationsHomeFormInputsReturnAddressEn {
	_TranslationsHomeFormInputsReturnAddressEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get labelText => 'Dirección de regreso';
	@override String get hintText => 'Selecciona tu dirección de regreso';
}

// Path: home.form.inputs.departureTime
class _TranslationsHomeFormInputsDepartureTimeEs implements TranslationsHomeFormInputsDepartureTimeEn {
	_TranslationsHomeFormInputsDepartureTimeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get labelText => 'Hora de salida';
	@override String get hintText => '05:00';
}

// Path: home.form.inputs.returnTime
class _TranslationsHomeFormInputsReturnTimeEs implements TranslationsHomeFormInputsReturnTimeEn {
	_TranslationsHomeFormInputsReturnTimeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get labelText => 'Hora de regreso';
	@override String get hintText => '17:30';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'commons.departureTicket.title': return 'Boleto de ida';
			case 'commons.returnTicket.title': return 'Boleto de regreso';
			case 'commons.time.hours': return 'Horas';
			case 'commons.time.minutes': return 'Minutos';
			case 'address.header.title': return 'Seleccionar dirección';
			case 'address.searchInput.hintText': return '¿Cuál es tu dirección?';
			case 'bus.header.departureTitle': return 'Seleccionar autobús de ida';
			case 'bus.header.returnTitle': return 'Seleccionar autobús de regreso';
			case 'bus.results.title': return 'Mejor ruta';
			case 'bus.selected.title': return 'Información de salida';
			case 'bus.button.title': return 'Seleccionar';
			case 'home.header.title': return 'Buscar';
			case 'home.guest.title': return 'Usuario invitado';
			case 'home.form.inputs.departureAddress.labelText': return 'Dirección de salida';
			case 'home.form.inputs.departureAddress.hintText': return 'Selecciona tu dirección de salida';
			case 'home.form.inputs.returnAddress.labelText': return 'Dirección de regreso';
			case 'home.form.inputs.returnAddress.hintText': return 'Selecciona tu dirección de regreso';
			case 'home.form.inputs.departureTime.labelText': return 'Hora de salida';
			case 'home.form.inputs.departureTime.hintText': return '05:00';
			case 'home.form.inputs.returnTime.labelText': return 'Hora de regreso';
			case 'home.form.inputs.returnTime.hintText': return '17:30';
			case 'home.form.button.title': return 'Buscar';
			case 'home.reservation.warning.title': return 'Tu autobús está en camino';
			case 'home.reservation.warning.textButton': return 'Ver en el mapa';
			case 'home.reservation.warning.description': return ({required Object time}) => 'Tu autobús llegará en ${time}...';
			case 'home.reservation.ticket.title': return 'Próximo viaje';
			case 'map.header.title': return 'Mapa';
			case 'map.inactive.title': return 'No hay viajes activos';
			case 'map.inactive.description': return 'No tienes ninguna reserva. Realiza una compra para ver tu autobús en el mapa.';
			case 'map.inactive.buttonText': return 'Haz clic aquí para hacer una reserva';
			case 'notification.header.title': return 'Notificaciones';
			case 'payment.header.title': return 'Comprar boletos';
			case 'payment.paymentMethod.title': return 'Método de pago';
			case 'payment.paymentMethod.textButton.title': return 'Modificar';
			case 'payment.priceInfo.title': return 'Suscripción mensual';
			case 'payment.priceInfo.recurrence ': return 'mes';
			case 'payment.button.title': return 'Confirmar pago';
			case 'paymentMethod.header.title': return 'Seleccionar método de pago';
			case 'reservation.header.title': return 'Reservación';
			case 'reservation.inactive.title': return 'No hay boletos disponibles';
			case 'reservation.inactive.description': return 'No tienes boletos. Realiza una compra y regresa.';
			case 'reservation.inactive.buttonText': return 'Haz clic aquí para comprar tus boletos';
			case 'seat.header.title': return 'Seleccionar asiento';
			case 'seat.descriptions.selected': return 'Seleccionado';
			case 'seat.descriptions.available': return 'Disponible';
			case 'seat.descriptions.unavailable': return 'No disponible';
			case 'seat.button.title': return 'Confirmar asiento';
			case 'time.header.title': return 'Seleccionar hora';
			case 'time.button.title': return 'Confirmar';
			case 'user.header.title': return 'Perfil';
			case 'user.header.welcome': return 'Bienvenido';
			case 'user.items.account.title': return 'Cuenta';
			case 'user.items.account.description': return 'Información sobre tu cuenta';
			case 'user.items.reservations.title': return 'Reservaciones';
			case 'user.items.reservations.description': return 'Información sobre tus reservaciones';
			case 'user.items.configurations.title': return 'Preferencias y configuraciones';
			case 'user.items.configurations.description': return 'Administra tus preferencias y configuraciones';
			case 'user.items.support.title': return 'Soporte';
			case 'user.items.support.description': return 'Cuéntanos tu problema y te ayudaremos';
			case 'user.items.about.title': return 'Acerca de Levy';
			case 'user.items.about.description': return 'Descubre más sobre nuestra aplicación';
			default: return null;
		}
	}
}

