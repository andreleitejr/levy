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
	@override late final _TranslationsHomeEs home = _TranslationsHomeEs._(_root);
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
			default: return null;
		}
	}
}

