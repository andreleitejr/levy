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
	@override late final _TranslationsHomePt home = _TranslationsHomePt._(_root);
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
			default: return null;
		}
	}
}

