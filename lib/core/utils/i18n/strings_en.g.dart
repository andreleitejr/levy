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
	late final TranslationsCommonsEn commons = TranslationsCommonsEn._(_root);
	late final TranslationsAddressEn address = TranslationsAddressEn._(_root);
	late final TranslationsBusEn bus = TranslationsBusEn._(_root);
	late final TranslationsHomeEn home = TranslationsHomeEn._(_root);
	late final TranslationsNotificationEn notification = TranslationsNotificationEn._(_root);
	late final TranslationsPaymentEn payment = TranslationsPaymentEn._(_root);
	late final TranslationsPaymentMethodEn paymentMethod = TranslationsPaymentMethodEn._(_root);
	late final TranslationsReservationEn reservation = TranslationsReservationEn._(_root);
	late final TranslationsSeatEn seat = TranslationsSeatEn._(_root);
	late final TranslationsTimeEn time = TranslationsTimeEn._(_root);
	late final TranslationsUserEn user = TranslationsUserEn._(_root);
}

// Path: commons
class TranslationsCommonsEn {
	TranslationsCommonsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsCommonsDepartureTicketEn departureTicket = TranslationsCommonsDepartureTicketEn._(_root);
	late final TranslationsCommonsReturnTicketEn returnTicket = TranslationsCommonsReturnTicketEn._(_root);
	late final TranslationsCommonsTimeEn time = TranslationsCommonsTimeEn._(_root);
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
	late final TranslationsBusResultsEn results = TranslationsBusResultsEn._(_root);
	late final TranslationsBusSelectedEn selected = TranslationsBusSelectedEn._(_root);
	late final TranslationsBusButtonEn button = TranslationsBusButtonEn._(_root);
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHomeHeaderEn header = TranslationsHomeHeaderEn._(_root);
	late final TranslationsHomeFormEn form = TranslationsHomeFormEn._(_root);
	late final TranslationsHomeReservationEn reservation = TranslationsHomeReservationEn._(_root);
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
	late final TranslationsPaymentPaymentMethodEn paymentMethod = TranslationsPaymentPaymentMethodEn._(_root);
	late final TranslationsPaymentPriceInfoEn priceInfo = TranslationsPaymentPriceInfoEn._(_root);
	late final TranslationsPaymentButtonEn button = TranslationsPaymentButtonEn._(_root);
}

// Path: paymentMethod
class TranslationsPaymentMethodEn {
	TranslationsPaymentMethodEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPaymentMethodHeaderEn header = TranslationsPaymentMethodHeaderEn._(_root);
}

// Path: reservation
class TranslationsReservationEn {
	TranslationsReservationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsReservationHeaderEn header = TranslationsReservationHeaderEn._(_root);
	late final TranslationsReservationInactiveEn inactive = TranslationsReservationInactiveEn._(_root);
}

// Path: seat
class TranslationsSeatEn {
	TranslationsSeatEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSeatHeaderEn header = TranslationsSeatHeaderEn._(_root);
	late final TranslationsSeatDescriptionsEn descriptions = TranslationsSeatDescriptionsEn._(_root);
	late final TranslationsSeatButtonEn button = TranslationsSeatButtonEn._(_root);
}

// Path: time
class TranslationsTimeEn {
	TranslationsTimeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsTimeHeaderEn header = TranslationsTimeHeaderEn._(_root);
	late final TranslationsTimeButtonEn button = TranslationsTimeButtonEn._(_root);
}

// Path: user
class TranslationsUserEn {
	TranslationsUserEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUserHeaderEn header = TranslationsUserHeaderEn._(_root);
	late final TranslationsUserItemsEn items = TranslationsUserItemsEn._(_root);
}

// Path: commons.departureTicket
class TranslationsCommonsDepartureTicketEn {
	TranslationsCommonsDepartureTicketEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Departure Ticket';
}

// Path: commons.returnTicket
class TranslationsCommonsReturnTicketEn {
	TranslationsCommonsReturnTicketEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Return Ticket';
}

// Path: commons.time
class TranslationsCommonsTimeEn {
	TranslationsCommonsTimeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get hours => 'Hours';
	String get minutes => 'Minutes';
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

// Path: bus.results
class TranslationsBusResultsEn {
	TranslationsBusResultsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Best Route';
}

// Path: bus.selected
class TranslationsBusSelectedEn {
	TranslationsBusSelectedEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Departure Info';
}

// Path: bus.button
class TranslationsBusButtonEn {
	TranslationsBusButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select';
}

// Path: home.header
class TranslationsHomeHeaderEn {
	TranslationsHomeHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Search';
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
	String get title => 'Order tickets';
}

// Path: payment.paymentMethod
class TranslationsPaymentPaymentMethodEn {
	TranslationsPaymentPaymentMethodEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Payment Method';
	late final TranslationsPaymentPaymentMethodTextButtonEn textButton = TranslationsPaymentPaymentMethodTextButtonEn._(_root);
}

// Path: payment.priceInfo
class TranslationsPaymentPriceInfoEn {
	TranslationsPaymentPriceInfoEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Monthly subscription';
	String get recurrence  => 'month';
}

// Path: payment.button
class TranslationsPaymentButtonEn {
	TranslationsPaymentButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Confirm Payment';
}

// Path: paymentMethod.header
class TranslationsPaymentMethodHeaderEn {
	TranslationsPaymentMethodHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select payment method';
}

// Path: reservation.header
class TranslationsReservationHeaderEn {
	TranslationsReservationHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Reservation';
}

// Path: reservation.inactive
class TranslationsReservationInactiveEn {
	TranslationsReservationInactiveEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'No tickets available';
	String get description => 'What a shame! You do not have any tickets. Make a purchase and try again.';
	String get buttonText => 'Click here to buy your tickets';
}

// Path: seat.header
class TranslationsSeatHeaderEn {
	TranslationsSeatHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select Seat';
}

// Path: seat.descriptions
class TranslationsSeatDescriptionsEn {
	TranslationsSeatDescriptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get selected => 'Selected';
	String get available => 'Available';
	String get unavailable => 'Unavailable';
}

// Path: seat.button
class TranslationsSeatButtonEn {
	TranslationsSeatButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Confirm Seat';
}

// Path: time.header
class TranslationsTimeHeaderEn {
	TranslationsTimeHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select time';
}

// Path: time.button
class TranslationsTimeButtonEn {
	TranslationsTimeButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Confirm';
}

// Path: user.header
class TranslationsUserHeaderEn {
	TranslationsUserHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Profile';
	String get welcome => 'Welcome';
}

// Path: user.items
class TranslationsUserItemsEn {
	TranslationsUserItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUserItemsAccountEn account = TranslationsUserItemsAccountEn._(_root);
	late final TranslationsUserItemsReservationsEn reservations = TranslationsUserItemsReservationsEn._(_root);
	late final TranslationsUserItemsConfigurationsEn configurations = TranslationsUserItemsConfigurationsEn._(_root);
	late final TranslationsUserItemsSupportEn support = TranslationsUserItemsSupportEn._(_root);
	late final TranslationsUserItemsAboutEn about = TranslationsUserItemsAboutEn._(_root);
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

// Path: payment.paymentMethod.textButton
class TranslationsPaymentPaymentMethodTextButtonEn {
	TranslationsPaymentPaymentMethodTextButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Modify';
}

// Path: user.items.account
class TranslationsUserItemsAccountEn {
	TranslationsUserItemsAccountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Account';
	String get description => 'Informations about your account';
}

// Path: user.items.reservations
class TranslationsUserItemsReservationsEn {
	TranslationsUserItemsReservationsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Reservations';
	String get description => 'Informations about your reservations';
}

// Path: user.items.configurations
class TranslationsUserItemsConfigurationsEn {
	TranslationsUserItemsConfigurationsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Preferences & Configurations';
	String get description => 'Manage your preferences and configurations';
}

// Path: user.items.support
class TranslationsUserItemsSupportEn {
	TranslationsUserItemsSupportEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Support';
	String get description => 'Tell us your problem and we’ll help you';
}

// Path: user.items.about
class TranslationsUserItemsAboutEn {
	TranslationsUserItemsAboutEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'About Levy';
	String get description => 'Find out more about our app';
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
			case 'commons.departureTicket.title': return 'Departure Ticket';
			case 'commons.returnTicket.title': return 'Return Ticket';
			case 'commons.time.hours': return 'Hours';
			case 'commons.time.minutes': return 'Minutes';
			case 'address.header.title': return 'Select address';
			case 'address.searchInput.hintText': return 'What’s your address?';
			case 'bus.header.title': return 'Select Bus';
			case 'bus.results.title': return 'Best Route';
			case 'bus.selected.title': return 'Departure Info';
			case 'bus.button.title': return 'Select';
			case 'home.header.title': return 'Search';
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
			case 'notification.header.title': return 'Notifications';
			case 'payment.header.title': return 'Order tickets';
			case 'payment.paymentMethod.title': return 'Payment Method';
			case 'payment.paymentMethod.textButton.title': return 'Modify';
			case 'payment.priceInfo.title': return 'Monthly subscription';
			case 'payment.priceInfo.recurrence ': return 'month';
			case 'payment.button.title': return 'Confirm Payment';
			case 'paymentMethod.header.title': return 'Select payment method';
			case 'reservation.header.title': return 'Reservation';
			case 'reservation.inactive.title': return 'No tickets available';
			case 'reservation.inactive.description': return 'What a shame! You do not have any tickets. Make a purchase and try again.';
			case 'reservation.inactive.buttonText': return 'Click here to buy your tickets';
			case 'seat.header.title': return 'Select Seat';
			case 'seat.descriptions.selected': return 'Selected';
			case 'seat.descriptions.available': return 'Available';
			case 'seat.descriptions.unavailable': return 'Unavailable';
			case 'seat.button.title': return 'Confirm Seat';
			case 'time.header.title': return 'Select time';
			case 'time.button.title': return 'Confirm';
			case 'user.header.title': return 'Profile';
			case 'user.header.welcome': return 'Welcome';
			case 'user.items.account.title': return 'Account';
			case 'user.items.account.description': return 'Informations about your account';
			case 'user.items.reservations.title': return 'Reservations';
			case 'user.items.reservations.description': return 'Informations about your reservations';
			case 'user.items.configurations.title': return 'Preferences & Configurations';
			case 'user.items.configurations.description': return 'Manage your preferences and configurations';
			case 'user.items.support.title': return 'Support';
			case 'user.items.support.description': return 'Tell us your problem and we’ll help you';
			case 'user.items.about.title': return 'About Levy';
			case 'user.items.about.description': return 'Find out more about our app';
			default: return null;
		}
	}
}

