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
	late final TranslationsAddressEn address = TranslationsAddressEn._(_root);
	late final TranslationsBusEn bus = TranslationsBusEn._(_root);
	late final TranslationsNotificationEn notification = TranslationsNotificationEn._(_root);
	late final TranslationsPaymentEn payment = TranslationsPaymentEn._(_root);
	late final TranslationsReservationEn reservation = TranslationsReservationEn._(_root);
	late final TranslationsSearchEn search = TranslationsSearchEn._(_root);
	late final TranslationsSeatEn seat = TranslationsSeatEn._(_root);
	late final TranslationsTimeEn time = TranslationsTimeEn._(_root);
	late final TranslationsUserEn user = TranslationsUserEn._(_root);
}

// Path: address
class TranslationsAddressEn {
	TranslationsAddressEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAddressHeaderEn header = TranslationsAddressHeaderEn._(_root);
	late final TranslationsAddressSearchInputEn searchInput = TranslationsAddressSearchInputEn._(_root);
}

// Path: bus
class TranslationsBusEn {
	TranslationsBusEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsBusHeaderEn header = TranslationsBusHeaderEn._(_root);
}

// Path: notification
class TranslationsNotificationEn {
	TranslationsNotificationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsNotificationHeaderEn header = TranslationsNotificationHeaderEn._(_root);
}

// Path: payment
class TranslationsPaymentEn {
	TranslationsPaymentEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPaymentHeaderEn header = TranslationsPaymentHeaderEn._(_root);
}

// Path: reservation
class TranslationsReservationEn {
	TranslationsReservationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsReservationHeaderEn header = TranslationsReservationHeaderEn._(_root);
}

// Path: search
class TranslationsSearchEn {
	TranslationsSearchEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSearchHeaderEn header = TranslationsSearchHeaderEn._(_root);
	late final TranslationsSearchFormEn form = TranslationsSearchFormEn._(_root);
}

// Path: seat
class TranslationsSeatEn {
	TranslationsSeatEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSeatHeaderEn header = TranslationsSeatHeaderEn._(_root);
}

// Path: time
class TranslationsTimeEn {
	TranslationsTimeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsTimeHeaderEn header = TranslationsTimeHeaderEn._(_root);
}

// Path: user
class TranslationsUserEn {
	TranslationsUserEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUserHeaderEn header = TranslationsUserHeaderEn._(_root);
}

// Path: address.header
class TranslationsAddressHeaderEn {
	TranslationsAddressHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select address';
}

// Path: address.searchInput
class TranslationsAddressSearchInputEn {
	TranslationsAddressSearchInputEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get hintText => 'What’s your address?';
}

// Path: bus.header
class TranslationsBusHeaderEn {
	TranslationsBusHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select Bus';
}

// Path: notification.header
class TranslationsNotificationHeaderEn {
	TranslationsNotificationHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Notifications';
}

// Path: payment.header
class TranslationsPaymentHeaderEn {
	TranslationsPaymentHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Payment';
}

// Path: reservation.header
class TranslationsReservationHeaderEn {
	TranslationsReservationHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Reservation';
}

// Path: search.header
class TranslationsSearchHeaderEn {
	TranslationsSearchHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Search';
}

// Path: search.form
class TranslationsSearchFormEn {
	TranslationsSearchFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get homeAddress => 'Home Address';
	String get workAddress => 'Work Address';
	String get departureTime => 'Departure Time';
	String get returnTime => 'Return Time';
	String get buttonText => 'Search';
}

// Path: seat.header
class TranslationsSeatHeaderEn {
	TranslationsSeatHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select Seat';
}

// Path: time.header
class TranslationsTimeHeaderEn {
	TranslationsTimeHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select Time';
}

// Path: user.header
class TranslationsUserHeaderEn {
	TranslationsUserHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get welcome => 'Welcome';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'address.header.title': return 'Select address';
			case 'address.searchInput.hintText': return 'What’s your address?';
			case 'bus.header.title': return 'Select Bus';
			case 'notification.header.title': return 'Notifications';
			case 'payment.header.title': return 'Payment';
			case 'reservation.header.title': return 'Reservation';
			case 'search.header.title': return 'Search';
			case 'search.form.homeAddress': return 'Home Address';
			case 'search.form.workAddress': return 'Work Address';
			case 'search.form.departureTime': return 'Departure Time';
			case 'search.form.returnTime': return 'Return Time';
			case 'search.form.buttonText': return 'Search';
			case 'seat.header.title': return 'Select Seat';
			case 'time.header.title': return 'Select Time';
			case 'user.header.welcome': return 'Welcome';
			default: return null;
		}
	}
}

