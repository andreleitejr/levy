///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final TranslationsHomeEn home = TranslationsHomeEn._(_root);
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHomeHeaderEn header = TranslationsHomeHeaderEn._(_root);
	late final TranslationsHomeGuestEn guest = TranslationsHomeGuestEn._(_root);
	late final TranslationsHomeFormEn form = TranslationsHomeFormEn._(_root);
	late final TranslationsHomeReservationEn reservation = TranslationsHomeReservationEn._(_root);
}

// Path: home.header
class TranslationsHomeHeaderEn {
	TranslationsHomeHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Search';
}

// Path: home.guest
class TranslationsHomeGuestEn {
	TranslationsHomeGuestEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Guest User';
}

// Path: home.form
class TranslationsHomeFormEn {
	TranslationsHomeFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHomeFormInputsEn inputs = TranslationsHomeFormInputsEn._(_root);
	late final TranslationsHomeFormButtonEn button = TranslationsHomeFormButtonEn._(_root);
}

// Path: home.reservation
class TranslationsHomeReservationEn {
	TranslationsHomeReservationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHomeReservationWarningEn warning = TranslationsHomeReservationWarningEn._(_root);
	late final TranslationsHomeReservationTicketEn ticket = TranslationsHomeReservationTicketEn._(_root);
}

// Path: home.form.inputs
class TranslationsHomeFormInputsEn {
	TranslationsHomeFormInputsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHomeFormInputsDepartureAddressEn departureAddress = TranslationsHomeFormInputsDepartureAddressEn._(_root);
	late final TranslationsHomeFormInputsReturnAddressEn returnAddress = TranslationsHomeFormInputsReturnAddressEn._(_root);
	late final TranslationsHomeFormInputsDepartureTimeEn departureTime = TranslationsHomeFormInputsDepartureTimeEn._(_root);
	late final TranslationsHomeFormInputsReturnTimeEn returnTime = TranslationsHomeFormInputsReturnTimeEn._(_root);
}

// Path: home.form.button
class TranslationsHomeFormButtonEn {
	TranslationsHomeFormButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Search';
}

// Path: home.reservation.warning
class TranslationsHomeReservationWarningEn {
	TranslationsHomeReservationWarningEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Your bus in on the way';
	String get textButton => 'View on map';
	String description({required Object time}) => 'Your bus will arrive in ${time}...';
}

// Path: home.reservation.ticket
class TranslationsHomeReservationTicketEn {
	TranslationsHomeReservationTicketEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Next trip';
}

// Path: home.form.inputs.departureAddress
class TranslationsHomeFormInputsDepartureAddressEn {
	TranslationsHomeFormInputsDepartureAddressEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get labelText => 'Departure Address';
	String get hintText => 'Select your departure address';
}

// Path: home.form.inputs.returnAddress
class TranslationsHomeFormInputsReturnAddressEn {
	TranslationsHomeFormInputsReturnAddressEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get labelText => 'Return Address';
	String get hintText => 'Select your return address';
}

// Path: home.form.inputs.departureTime
class TranslationsHomeFormInputsDepartureTimeEn {
	TranslationsHomeFormInputsDepartureTimeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get labelText => 'Departure Time';
	String get hintText => '05:00';
}

// Path: home.form.inputs.returnTime
class TranslationsHomeFormInputsReturnTimeEn {
	TranslationsHomeFormInputsReturnTimeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get labelText => 'Return Time';
	String get hintText => '17:30';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'home.header.title': return 'Search';
			case 'home.guest.title': return 'Guest User';
			case 'home.form.inputs.departureAddress.labelText': return 'Departure Address';
			case 'home.form.inputs.departureAddress.hintText': return 'Select your departure address';
			case 'home.form.inputs.returnAddress.labelText': return 'Return Address';
			case 'home.form.inputs.returnAddress.hintText': return 'Select your return address';
			case 'home.form.inputs.departureTime.labelText': return 'Departure Time';
			case 'home.form.inputs.departureTime.hintText': return '05:00';
			case 'home.form.inputs.returnTime.labelText': return 'Return Time';
			case 'home.form.inputs.returnTime.hintText': return '17:30';
			case 'home.form.button.title': return 'Search';
			case 'home.reservation.warning.title': return 'Your bus in on the way';
			case 'home.reservation.warning.textButton': return 'View on map';
			case 'home.reservation.warning.description': return ({required Object time}) => 'Your bus will arrive in ${time}...';
			case 'home.reservation.ticket.title': return 'Next trip';
			default: return null;
		}
	}
}

