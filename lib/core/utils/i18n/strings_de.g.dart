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
	@override late final _TranslationsCommonsDe commons = _TranslationsCommonsDe._(_root);
	@override late final _TranslationsAddressDe address = _TranslationsAddressDe._(_root);
	@override late final _TranslationsBusDe bus = _TranslationsBusDe._(_root);
	@override late final _TranslationsHomeDe home = _TranslationsHomeDe._(_root);
	@override late final _TranslationsMapDe map = _TranslationsMapDe._(_root);
	@override late final _TranslationsNotificationDe notification = _TranslationsNotificationDe._(_root);
	@override late final _TranslationsPaymentDe payment = _TranslationsPaymentDe._(_root);
	@override late final _TranslationsPaymentMethodDe paymentMethod = _TranslationsPaymentMethodDe._(_root);
	@override late final _TranslationsReservationDe reservation = _TranslationsReservationDe._(_root);
	@override late final _TranslationsSeatDe seat = _TranslationsSeatDe._(_root);
	@override late final _TranslationsTimeDe time = _TranslationsTimeDe._(_root);
	@override late final _TranslationsUserDe user = _TranslationsUserDe._(_root);
}

// Path: commons
class _TranslationsCommonsDe implements TranslationsCommonsEn {
	_TranslationsCommonsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCommonsDepartureTicketDe departureTicket = _TranslationsCommonsDepartureTicketDe._(_root);
	@override late final _TranslationsCommonsReturnTicketDe returnTicket = _TranslationsCommonsReturnTicketDe._(_root);
	@override late final _TranslationsCommonsTimeDe time = _TranslationsCommonsTimeDe._(_root);
}

// Path: address
class _TranslationsAddressDe implements TranslationsAddressEn {
	_TranslationsAddressDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAddressHeaderDe header = _TranslationsAddressHeaderDe._(_root);
	@override late final _TranslationsAddressSearchInputDe searchInput = _TranslationsAddressSearchInputDe._(_root);
	@override late final _TranslationsAddressErrorsDe errors = _TranslationsAddressErrorsDe._(_root);
}

// Path: bus
class _TranslationsBusDe implements TranslationsBusEn {
	_TranslationsBusDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBusHeaderDe header = _TranslationsBusHeaderDe._(_root);
	@override late final _TranslationsBusResultsDe results = _TranslationsBusResultsDe._(_root);
	@override late final _TranslationsBusSelectedDe selected = _TranslationsBusSelectedDe._(_root);
	@override late final _TranslationsBusErrorsDe errors = _TranslationsBusErrorsDe._(_root);
	@override late final _TranslationsBusButtonDe button = _TranslationsBusButtonDe._(_root);
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

// Path: map
class _TranslationsMapDe implements TranslationsMapEn {
	_TranslationsMapDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMapHeaderDe header = _TranslationsMapHeaderDe._(_root);
	@override late final _TranslationsMapInactiveDe inactive = _TranslationsMapInactiveDe._(_root);
}

// Path: notification
class _TranslationsNotificationDe implements TranslationsNotificationEn {
	_TranslationsNotificationDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationHeaderDe header = _TranslationsNotificationHeaderDe._(_root);
}

// Path: payment
class _TranslationsPaymentDe implements TranslationsPaymentEn {
	_TranslationsPaymentDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaymentHeaderDe header = _TranslationsPaymentHeaderDe._(_root);
	@override late final _TranslationsPaymentPaymentMethodDe paymentMethod = _TranslationsPaymentPaymentMethodDe._(_root);
	@override late final _TranslationsPaymentPriceInfoDe priceInfo = _TranslationsPaymentPriceInfoDe._(_root);
	@override late final _TranslationsPaymentButtonDe button = _TranslationsPaymentButtonDe._(_root);
}

// Path: paymentMethod
class _TranslationsPaymentMethodDe implements TranslationsPaymentMethodEn {
	_TranslationsPaymentMethodDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaymentMethodHeaderDe header = _TranslationsPaymentMethodHeaderDe._(_root);
}

// Path: reservation
class _TranslationsReservationDe implements TranslationsReservationEn {
	_TranslationsReservationDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReservationHeaderDe header = _TranslationsReservationHeaderDe._(_root);
	@override late final _TranslationsReservationInactiveDe inactive = _TranslationsReservationInactiveDe._(_root);
}

// Path: seat
class _TranslationsSeatDe implements TranslationsSeatEn {
	_TranslationsSeatDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSeatHeaderDe header = _TranslationsSeatHeaderDe._(_root);
	@override late final _TranslationsSeatDescriptionsDe descriptions = _TranslationsSeatDescriptionsDe._(_root);
	@override late final _TranslationsSeatButtonDe button = _TranslationsSeatButtonDe._(_root);
}

// Path: time
class _TranslationsTimeDe implements TranslationsTimeEn {
	_TranslationsTimeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsTimeHeaderDe header = _TranslationsTimeHeaderDe._(_root);
	@override late final _TranslationsTimeButtonDe button = _TranslationsTimeButtonDe._(_root);
}

// Path: user
class _TranslationsUserDe implements TranslationsUserEn {
	_TranslationsUserDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUserHeaderDe header = _TranslationsUserHeaderDe._(_root);
	@override late final _TranslationsUserItemsDe items = _TranslationsUserItemsDe._(_root);
}

// Path: commons.departureTicket
class _TranslationsCommonsDepartureTicketDe implements TranslationsCommonsDepartureTicketEn {
	_TranslationsCommonsDepartureTicketDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Abfahrtsticket';
}

// Path: commons.returnTicket
class _TranslationsCommonsReturnTicketDe implements TranslationsCommonsReturnTicketEn {
	_TranslationsCommonsReturnTicketDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rückfahrtticket';
}

// Path: commons.time
class _TranslationsCommonsTimeDe implements TranslationsCommonsTimeEn {
	_TranslationsCommonsTimeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get hour => 'Stunde';
	@override String get hours => 'Stunden';
	@override String get minute => 'Minute';
	@override String get minutes => 'Minuten';
}

// Path: address.header
class _TranslationsAddressHeaderDe implements TranslationsAddressHeaderEn {
	_TranslationsAddressHeaderDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Adresse auswählen';
}

// Path: address.searchInput
class _TranslationsAddressSearchInputDe implements TranslationsAddressSearchInputEn {
	_TranslationsAddressSearchInputDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get hintText => 'Wie lautet Ihre Adresse?';
}

// Path: address.errors
class _TranslationsAddressErrorsDe implements TranslationsAddressErrorsEn {
	_TranslationsAddressErrorsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get loadError => 'Fehler beim Laden der Adressen.';
}

// Path: bus.header
class _TranslationsBusHeaderDe implements TranslationsBusHeaderEn {
	_TranslationsBusHeaderDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get departureTitle => 'Abfahrtsbus auswählen';
	@override String get returnTitle => 'Rückfahrtsbus auswählen';
}

// Path: bus.results
class _TranslationsBusResultsDe implements TranslationsBusResultsEn {
	_TranslationsBusResultsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beste Route';
}

// Path: bus.selected
class _TranslationsBusSelectedDe implements TranslationsBusSelectedEn {
	_TranslationsBusSelectedDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Abfahrtsinformationen';
}

// Path: bus.errors
class _TranslationsBusErrorsDe implements TranslationsBusErrorsEn {
	_TranslationsBusErrorsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get loadError => 'Fehler beim Laden der Busse.';
}

// Path: bus.button
class _TranslationsBusButtonDe implements TranslationsBusButtonEn {
	_TranslationsBusButtonDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Auswählen';
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

// Path: map.header
class _TranslationsMapHeaderDe implements TranslationsMapHeaderEn {
	_TranslationsMapHeaderDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Karte';
}

// Path: map.inactive
class _TranslationsMapInactiveDe implements TranslationsMapInactiveEn {
	_TranslationsMapInactiveDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Keine aktiven Fahrten';
	@override String get description => 'Sie haben keine Reservierungen. Kaufen Sie ein Ticket, um Ihren Bus auf der Karte zu sehen.';
	@override String get buttonText => 'Hier klicken, um eine Reservierung vorzunehmen';
}

// Path: notification.header
class _TranslationsNotificationHeaderDe implements TranslationsNotificationHeaderEn {
	_TranslationsNotificationHeaderDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Benachrichtigungen';
}

// Path: payment.header
class _TranslationsPaymentHeaderDe implements TranslationsPaymentHeaderEn {
	_TranslationsPaymentHeaderDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tickets bestellen';
}

// Path: payment.paymentMethod
class _TranslationsPaymentPaymentMethodDe implements TranslationsPaymentPaymentMethodEn {
	_TranslationsPaymentPaymentMethodDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zahlungsmethode';
	@override late final _TranslationsPaymentPaymentMethodTextButtonDe textButton = _TranslationsPaymentPaymentMethodTextButtonDe._(_root);
}

// Path: payment.priceInfo
class _TranslationsPaymentPriceInfoDe implements TranslationsPaymentPriceInfoEn {
	_TranslationsPaymentPriceInfoDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Monatliches Abonnement';
	@override String get recurrence  => 'Monat';
}

// Path: payment.button
class _TranslationsPaymentButtonDe implements TranslationsPaymentButtonEn {
	_TranslationsPaymentButtonDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zahlung bestätigen';
}

// Path: paymentMethod.header
class _TranslationsPaymentMethodHeaderDe implements TranslationsPaymentMethodHeaderEn {
	_TranslationsPaymentMethodHeaderDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zahlungsmethode auswählen';
}

// Path: reservation.header
class _TranslationsReservationHeaderDe implements TranslationsReservationHeaderEn {
	_TranslationsReservationHeaderDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reservierung';
}

// Path: reservation.inactive
class _TranslationsReservationInactiveDe implements TranslationsReservationInactiveEn {
	_TranslationsReservationInactiveDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Keine Tickets verfügbar';
	@override String get description => 'Sie haben keine Tickets. Kaufen Sie ein Ticket und kommen Sie zurück.';
	@override String get buttonText => 'Hier klicken, um Ihre Tickets zu kaufen';
}

// Path: seat.header
class _TranslationsSeatHeaderDe implements TranslationsSeatHeaderEn {
	_TranslationsSeatHeaderDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sitzplatz auswählen';
}

// Path: seat.descriptions
class _TranslationsSeatDescriptionsDe implements TranslationsSeatDescriptionsEn {
	_TranslationsSeatDescriptionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get selected => 'Ausgewählt';
	@override String get available => 'Verfügbar';
	@override String get unavailable => 'Nicht verfügbar';
}

// Path: seat.button
class _TranslationsSeatButtonDe implements TranslationsSeatButtonEn {
	_TranslationsSeatButtonDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sitzplatz bestätigen';
}

// Path: time.header
class _TranslationsTimeHeaderDe implements TranslationsTimeHeaderEn {
	_TranslationsTimeHeaderDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zeit auswählen';
}

// Path: time.button
class _TranslationsTimeButtonDe implements TranslationsTimeButtonEn {
	_TranslationsTimeButtonDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bestätigen';
}

// Path: user.header
class _TranslationsUserHeaderDe implements TranslationsUserHeaderEn {
	_TranslationsUserHeaderDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get welcome => 'Willkommen';
}

// Path: user.items
class _TranslationsUserItemsDe implements TranslationsUserItemsEn {
	_TranslationsUserItemsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUserItemsAccountDe account = _TranslationsUserItemsAccountDe._(_root);
	@override late final _TranslationsUserItemsReservationsDe reservations = _TranslationsUserItemsReservationsDe._(_root);
	@override late final _TranslationsUserItemsConfigurationsDe configurations = _TranslationsUserItemsConfigurationsDe._(_root);
	@override late final _TranslationsUserItemsSupportDe support = _TranslationsUserItemsSupportDe._(_root);
	@override late final _TranslationsUserItemsAboutDe about = _TranslationsUserItemsAboutDe._(_root);
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

// Path: payment.paymentMethod.textButton
class _TranslationsPaymentPaymentMethodTextButtonDe implements TranslationsPaymentPaymentMethodTextButtonEn {
	_TranslationsPaymentPaymentMethodTextButtonDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ändern';
}

// Path: user.items.account
class _TranslationsUserItemsAccountDe implements TranslationsUserItemsAccountEn {
	_TranslationsUserItemsAccountDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Konto';
	@override String get description => 'Informationen zu Ihrem Konto';
}

// Path: user.items.reservations
class _TranslationsUserItemsReservationsDe implements TranslationsUserItemsReservationsEn {
	_TranslationsUserItemsReservationsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reservierungen';
	@override String get description => 'Informationen zu Ihren Reservierungen';
}

// Path: user.items.configurations
class _TranslationsUserItemsConfigurationsDe implements TranslationsUserItemsConfigurationsEn {
	_TranslationsUserItemsConfigurationsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Einstellungen & Präferenzen';
	@override String get description => 'Verwalten Sie Ihre Einstellungen und Präferenzen';
}

// Path: user.items.support
class _TranslationsUserItemsSupportDe implements TranslationsUserItemsSupportEn {
	_TranslationsUserItemsSupportDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Support';
	@override String get description => 'Teilen Sie uns Ihr Problem mit, und wir helfen Ihnen';
}

// Path: user.items.about
class _TranslationsUserItemsAboutDe implements TranslationsUserItemsAboutEn {
	_TranslationsUserItemsAboutDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Über Levy';
	@override String get description => 'Erfahren Sie mehr über unsere App';
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
			case 'commons.departureTicket.title': return 'Abfahrtsticket';
			case 'commons.returnTicket.title': return 'Rückfahrtticket';
			case 'commons.time.hour': return 'Stunde';
			case 'commons.time.hours': return 'Stunden';
			case 'commons.time.minute': return 'Minute';
			case 'commons.time.minutes': return 'Minuten';
			case 'address.header.title': return 'Adresse auswählen';
			case 'address.searchInput.hintText': return 'Wie lautet Ihre Adresse?';
			case 'address.errors.loadError': return 'Fehler beim Laden der Adressen.';
			case 'bus.header.departureTitle': return 'Abfahrtsbus auswählen';
			case 'bus.header.returnTitle': return 'Rückfahrtsbus auswählen';
			case 'bus.results.title': return 'Beste Route';
			case 'bus.selected.title': return 'Abfahrtsinformationen';
			case 'bus.errors.loadError': return 'Fehler beim Laden der Busse.';
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
			case 'home.reservation.warning.description': return ({required Object time}) => 'Ihr Bus kommt in ${time} an.';
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
