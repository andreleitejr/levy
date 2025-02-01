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
	@override String get title => 'Abfahrtsticket';
}

// Path: commons.returnTicket
class _TranslationsCommonsReturnTicketPt implements TranslationsCommonsReturnTicketEn {
	_TranslationsCommonsReturnTicketPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rückfahrtticket';
}

// Path: commons.time
class _TranslationsCommonsTimePt implements TranslationsCommonsTimeEn {
	_TranslationsCommonsTimePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get hours => 'Stunden';
	@override String get minutes => 'Minuten';
}

// Path: address.header
class _TranslationsAddressHeaderPt implements TranslationsAddressHeaderEn {
	_TranslationsAddressHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Adresse auswählen';
}

// Path: address.searchInput
class _TranslationsAddressSearchInputPt implements TranslationsAddressSearchInputEn {
	_TranslationsAddressSearchInputPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get hintText => 'Wie lautet Ihre Adresse?';
}

// Path: bus.header
class _TranslationsBusHeaderPt implements TranslationsBusHeaderEn {
	_TranslationsBusHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get departureTitle => 'Abfahrtsbus auswählen';
	@override String get returnTitle => 'Rückfahrtsbus auswählen';
}

// Path: bus.results
class _TranslationsBusResultsPt implements TranslationsBusResultsEn {
	_TranslationsBusResultsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beste Route';
}

// Path: bus.selected
class _TranslationsBusSelectedPt implements TranslationsBusSelectedEn {
	_TranslationsBusSelectedPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Abfahrtsinformationen';
}

// Path: bus.button
class _TranslationsBusButtonPt implements TranslationsBusButtonEn {
	_TranslationsBusButtonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Auswählen';
}

// Path: home.header
class _TranslationsHomeHeaderPt implements TranslationsHomeHeaderEn {
	_TranslationsHomeHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suche';
}

// Path: home.guest
class _TranslationsHomeGuestPt implements TranslationsHomeGuestEn {
	_TranslationsHomeGuestPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gastbenutzer';
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
	@override String get title => 'Karte';
}

// Path: map.inactive
class _TranslationsMapInactivePt implements TranslationsMapInactiveEn {
	_TranslationsMapInactivePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Keine aktiven Fahrten';
	@override String get description => 'Sie haben keine Reservierungen. Kaufen Sie ein Ticket, um Ihren Bus auf der Karte zu sehen.';
	@override String get buttonText => 'Hier klicken, um eine Reservierung vorzunehmen';
}

// Path: notification.header
class _TranslationsNotificationHeaderPt implements TranslationsNotificationHeaderEn {
	_TranslationsNotificationHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Benachrichtigungen';
}

// Path: payment.header
class _TranslationsPaymentHeaderPt implements TranslationsPaymentHeaderEn {
	_TranslationsPaymentHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tickets bestellen';
}

// Path: payment.paymentMethod
class _TranslationsPaymentPaymentMethodPt implements TranslationsPaymentPaymentMethodEn {
	_TranslationsPaymentPaymentMethodPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zahlungsmethode';
	@override late final _TranslationsPaymentPaymentMethodTextButtonPt textButton = _TranslationsPaymentPaymentMethodTextButtonPt._(_root);
}

// Path: payment.priceInfo
class _TranslationsPaymentPriceInfoPt implements TranslationsPaymentPriceInfoEn {
	_TranslationsPaymentPriceInfoPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Monatliches Abonnement';
	@override String get recurrence  => 'Monat';
}

// Path: payment.button
class _TranslationsPaymentButtonPt implements TranslationsPaymentButtonEn {
	_TranslationsPaymentButtonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zahlung bestätigen';
}

// Path: paymentMethod.header
class _TranslationsPaymentMethodHeaderPt implements TranslationsPaymentMethodHeaderEn {
	_TranslationsPaymentMethodHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zahlungsmethode auswählen';
}

// Path: reservation.header
class _TranslationsReservationHeaderPt implements TranslationsReservationHeaderEn {
	_TranslationsReservationHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reservierung';
}

// Path: reservation.inactive
class _TranslationsReservationInactivePt implements TranslationsReservationInactiveEn {
	_TranslationsReservationInactivePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Keine Tickets verfügbar';
	@override String get description => 'Sie haben keine Tickets. Kaufen Sie ein Ticket und kommen Sie zurück.';
	@override String get buttonText => 'Hier klicken, um Ihre Tickets zu kaufen';
}

// Path: seat.header
class _TranslationsSeatHeaderPt implements TranslationsSeatHeaderEn {
	_TranslationsSeatHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sitzplatz auswählen';
}

// Path: seat.descriptions
class _TranslationsSeatDescriptionsPt implements TranslationsSeatDescriptionsEn {
	_TranslationsSeatDescriptionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get selected => 'Ausgewählt';
	@override String get available => 'Verfügbar';
	@override String get unavailable => 'Nicht verfügbar';
}

// Path: seat.button
class _TranslationsSeatButtonPt implements TranslationsSeatButtonEn {
	_TranslationsSeatButtonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sitzplatz bestätigen';
}

// Path: time.header
class _TranslationsTimeHeaderPt implements TranslationsTimeHeaderEn {
	_TranslationsTimeHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zeit auswählen';
}

// Path: time.button
class _TranslationsTimeButtonPt implements TranslationsTimeButtonEn {
	_TranslationsTimeButtonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bestätigen';
}

// Path: user.header
class _TranslationsUserHeaderPt implements TranslationsUserHeaderEn {
	_TranslationsUserHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get welcome => 'Willkommen';
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
	@override String get title => 'Suchen';
}

// Path: home.reservation.warning
class _TranslationsHomeReservationWarningPt implements TranslationsHomeReservationWarningEn {
	_TranslationsHomeReservationWarningPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ihr Bus ist unterwegs';
	@override String get textButton => 'Auf der Karte anzeigen';
	@override String description({required Object time}) => 'Ihr Bus kommt in ${time}...';
}

// Path: home.reservation.ticket
class _TranslationsHomeReservationTicketPt implements TranslationsHomeReservationTicketEn {
	_TranslationsHomeReservationTicketPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nächste Fahrt';
}

// Path: payment.paymentMethod.textButton
class _TranslationsPaymentPaymentMethodTextButtonPt implements TranslationsPaymentPaymentMethodTextButtonEn {
	_TranslationsPaymentPaymentMethodTextButtonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ändern';
}

// Path: user.items.account
class _TranslationsUserItemsAccountPt implements TranslationsUserItemsAccountEn {
	_TranslationsUserItemsAccountPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Konto';
	@override String get description => 'Informationen zu Ihrem Konto';
}

// Path: user.items.reservations
class _TranslationsUserItemsReservationsPt implements TranslationsUserItemsReservationsEn {
	_TranslationsUserItemsReservationsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reservierungen';
	@override String get description => 'Informationen zu Ihren Reservierungen';
}

// Path: user.items.configurations
class _TranslationsUserItemsConfigurationsPt implements TranslationsUserItemsConfigurationsEn {
	_TranslationsUserItemsConfigurationsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Einstellungen & Präferenzen';
	@override String get description => 'Verwalten Sie Ihre Einstellungen und Präferenzen';
}

// Path: user.items.support
class _TranslationsUserItemsSupportPt implements TranslationsUserItemsSupportEn {
	_TranslationsUserItemsSupportPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Support';
	@override String get description => 'Teilen Sie uns Ihr Problem mit, und wir helfen Ihnen';
}

// Path: user.items.about
class _TranslationsUserItemsAboutPt implements TranslationsUserItemsAboutEn {
	_TranslationsUserItemsAboutPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Über Levy';
	@override String get description => 'Erfahren Sie mehr über unsere App';
}

// Path: home.form.inputs.departureAddress
class _TranslationsHomeFormInputsDepartureAddressPt implements TranslationsHomeFormInputsDepartureAddressEn {
	_TranslationsHomeFormInputsDepartureAddressPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get labelText => 'Abfahrtsadresse';
	@override String get hintText => 'Wählen Sie Ihre Abfahrtsadresse';
}

// Path: home.form.inputs.returnAddress
class _TranslationsHomeFormInputsReturnAddressPt implements TranslationsHomeFormInputsReturnAddressEn {
	_TranslationsHomeFormInputsReturnAddressPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get labelText => 'Rückfahrtsadresse';
	@override String get hintText => 'Wählen Sie Ihre Rückfahrtsadresse';
}

// Path: home.form.inputs.departureTime
class _TranslationsHomeFormInputsDepartureTimePt implements TranslationsHomeFormInputsDepartureTimeEn {
	_TranslationsHomeFormInputsDepartureTimePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get labelText => 'Abfahrtszeit';
	@override String get hintText => '05:00';
}

// Path: home.form.inputs.returnTime
class _TranslationsHomeFormInputsReturnTimePt implements TranslationsHomeFormInputsReturnTimeEn {
	_TranslationsHomeFormInputsReturnTimePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get labelText => 'Rückfahrtszeit';
	@override String get hintText => '17:30';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsPt {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'commons.departureTicket.title': return 'Abfahrtsticket';
			case 'commons.returnTicket.title': return 'Rückfahrtticket';
			case 'commons.time.hours': return 'Stunden';
			case 'commons.time.minutes': return 'Minuten';
			case 'address.header.title': return 'Adresse auswählen';
			case 'address.searchInput.hintText': return 'Wie lautet Ihre Adresse?';
			case 'bus.header.departureTitle': return 'Abfahrtsbus auswählen';
			case 'bus.header.returnTitle': return 'Rückfahrtsbus auswählen';
			case 'bus.results.title': return 'Beste Route';
			case 'bus.selected.title': return 'Abfahrtsinformationen';
			case 'bus.button.title': return 'Auswählen';
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
			case 'home.reservation.warning.description': return ({required Object time}) => 'Ihr Bus kommt in ${time}...';
			case 'home.reservation.ticket.title': return 'Nächste Fahrt';
			case 'map.header.title': return 'Karte';
			case 'map.inactive.title': return 'Keine aktiven Fahrten';
			case 'map.inactive.description': return 'Sie haben keine Reservierungen. Kaufen Sie ein Ticket, um Ihren Bus auf der Karte zu sehen.';
			case 'map.inactive.buttonText': return 'Hier klicken, um eine Reservierung vorzunehmen';
			case 'notification.header.title': return 'Benachrichtigungen';
			case 'payment.header.title': return 'Tickets bestellen';
			case 'payment.paymentMethod.title': return 'Zahlungsmethode';
			case 'payment.paymentMethod.textButton.title': return 'Ändern';
			case 'payment.priceInfo.title': return 'Monatliches Abonnement';
			case 'payment.priceInfo.recurrence ': return 'Monat';
			case 'payment.button.title': return 'Zahlung bestätigen';
			case 'paymentMethod.header.title': return 'Zahlungsmethode auswählen';
			case 'reservation.header.title': return 'Reservierung';
			case 'reservation.inactive.title': return 'Keine Tickets verfügbar';
			case 'reservation.inactive.description': return 'Sie haben keine Tickets. Kaufen Sie ein Ticket und kommen Sie zurück.';
			case 'reservation.inactive.buttonText': return 'Hier klicken, um Ihre Tickets zu kaufen';
			case 'seat.header.title': return 'Sitzplatz auswählen';
			case 'seat.descriptions.selected': return 'Ausgewählt';
			case 'seat.descriptions.available': return 'Verfügbar';
			case 'seat.descriptions.unavailable': return 'Nicht verfügbar';
			case 'seat.button.title': return 'Sitzplatz bestätigen';
			case 'time.header.title': return 'Zeit auswählen';
			case 'time.button.title': return 'Bestätigen';
			case 'user.header.title': return 'Profil';
			case 'user.header.welcome': return 'Willkommen';
			case 'user.items.account.title': return 'Konto';
			case 'user.items.account.description': return 'Informationen zu Ihrem Konto';
			case 'user.items.reservations.title': return 'Reservierungen';
			case 'user.items.reservations.description': return 'Informationen zu Ihren Reservierungen';
			case 'user.items.configurations.title': return 'Einstellungen & Präferenzen';
			case 'user.items.configurations.description': return 'Verwalten Sie Ihre Einstellungen und Präferenzen';
			case 'user.items.support.title': return 'Support';
			case 'user.items.support.description': return 'Teilen Sie uns Ihr Problem mit, und wir helfen Ihnen';
			case 'user.items.about.title': return 'Über Levy';
			case 'user.items.about.description': return 'Erfahren Sie mehr über unsere App';
			default: return null;
		}
	}
}

