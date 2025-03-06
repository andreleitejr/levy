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
class TranslationsDe implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDe home = _TranslationsHomeDe._(_root);
}

// Path: home
class _TranslationsHomeDe implements TranslationsHomeEn {
	_TranslationsHomeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeHeaderDe header = _TranslationsHomeHeaderDe._(_root);
	@override late final _TranslationsHomeGuestDe guest = _TranslationsHomeGuestDe._(_root);
	@override late final _TranslationsHomeFormDe form = _TranslationsHomeFormDe._(_root);
	@override late final _TranslationsHomeReservationDe reservation = _TranslationsHomeReservationDe._(_root);
}

// Path: home.header
class _TranslationsHomeHeaderDe implements TranslationsHomeHeaderEn {
	_TranslationsHomeHeaderDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suche';
}

// Path: home.guest
class _TranslationsHomeGuestDe implements TranslationsHomeGuestEn {
	_TranslationsHomeGuestDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gastbenutzer';
}

// Path: home.form
class _TranslationsHomeFormDe implements TranslationsHomeFormEn {
	_TranslationsHomeFormDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeFormInputsDe inputs = _TranslationsHomeFormInputsDe._(_root);
	@override late final _TranslationsHomeFormButtonDe button = _TranslationsHomeFormButtonDe._(_root);
}

// Path: home.reservation
class _TranslationsHomeReservationDe implements TranslationsHomeReservationEn {
	_TranslationsHomeReservationDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeReservationWarningDe warning = _TranslationsHomeReservationWarningDe._(_root);
	@override late final _TranslationsHomeReservationTicketDe ticket = _TranslationsHomeReservationTicketDe._(_root);
}

// Path: home.form.inputs
class _TranslationsHomeFormInputsDe implements TranslationsHomeFormInputsEn {
	_TranslationsHomeFormInputsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeFormInputsDepartureAddressDe departureAddress = _TranslationsHomeFormInputsDepartureAddressDe._(_root);
	@override late final _TranslationsHomeFormInputsReturnAddressDe returnAddress = _TranslationsHomeFormInputsReturnAddressDe._(_root);
	@override late final _TranslationsHomeFormInputsDepartureTimeDe departureTime = _TranslationsHomeFormInputsDepartureTimeDe._(_root);
	@override late final _TranslationsHomeFormInputsReturnTimeDe returnTime = _TranslationsHomeFormInputsReturnTimeDe._(_root);
}

// Path: home.form.button
class _TranslationsHomeFormButtonDe implements TranslationsHomeFormButtonEn {
	_TranslationsHomeFormButtonDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suchen';
}

// Path: home.reservation.warning
class _TranslationsHomeReservationWarningDe implements TranslationsHomeReservationWarningEn {
	_TranslationsHomeReservationWarningDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ihr Bus ist unterwegs';
	@override String get textButton => 'Auf der Karte anzeigen';
	@override String description({required Object time}) => 'Ihr Bus kommt in ${time} an.';
}

// Path: home.reservation.ticket
class _TranslationsHomeReservationTicketDe implements TranslationsHomeReservationTicketEn {
	_TranslationsHomeReservationTicketDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nächste Fahrt';
}

// Path: home.form.inputs.departureAddress
class _TranslationsHomeFormInputsDepartureAddressDe implements TranslationsHomeFormInputsDepartureAddressEn {
	_TranslationsHomeFormInputsDepartureAddressDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get labelText => 'Abfahrtsadresse';
	@override String get hintText => 'Wählen Sie Ihre Abfahrtsadresse';
}

// Path: home.form.inputs.returnAddress
class _TranslationsHomeFormInputsReturnAddressDe implements TranslationsHomeFormInputsReturnAddressEn {
	_TranslationsHomeFormInputsReturnAddressDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get labelText => 'Rückfahrtsadresse';
	@override String get hintText => 'Wählen Sie Ihre Rückfahrtsadresse';
}

// Path: home.form.inputs.departureTime
class _TranslationsHomeFormInputsDepartureTimeDe implements TranslationsHomeFormInputsDepartureTimeEn {
	_TranslationsHomeFormInputsDepartureTimeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get labelText => 'Abfahrtszeit';
	@override String get hintText => '05:00';
}

// Path: home.form.inputs.returnTime
class _TranslationsHomeFormInputsReturnTimeDe implements TranslationsHomeFormInputsReturnTimeEn {
	_TranslationsHomeFormInputsReturnTimeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get labelText => 'Rückfahrtszeit';
	@override String get hintText => '17:30';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'home.header.title': return 'Suche';
			case 'home.guest.title': return 'Gastbenutzer';
			case 'home.form.inputs.departureAddress.labelText': return 'Abfahrtsadresse';
			case 'home.form.inputs.departureAddress.hintText': return 'Wählen Sie Ihre Abfahrtsadresse';
			case 'home.form.inputs.returnAddress.labelText': return 'Rückfahrtsadresse';
			case 'home.form.inputs.returnAddress.hintText': return 'Wählen Sie Ihre Rückfahrtsadresse';
			case 'home.form.inputs.departureTime.labelText': return 'Abfahrtszeit';
			case 'home.form.inputs.departureTime.hintText': return '05:00';
			case 'home.form.inputs.returnTime.labelText': return 'Rückfahrtszeit';
			case 'home.form.inputs.returnTime.hintText': return '17:30';
			case 'home.form.button.title': return 'Suchen';
			case 'home.reservation.warning.title': return 'Ihr Bus ist unterwegs';
			case 'home.reservation.warning.textButton': return 'Auf der Karte anzeigen';
			case 'home.reservation.warning.description': return ({required Object time}) => 'Ihr Bus kommt in ${time} an.';
			case 'home.reservation.ticket.title': return 'Nächste Fahrt';
			default: return null;
		}
	}
}

