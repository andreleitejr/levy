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
	late final TranslationsHomeEn home = TranslationsHomeEn._(_root);
}

// Path: address
class TranslationsAddressEn {
	TranslationsAddressEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAddressHeaderEn header = TranslationsAddressHeaderEn._(_root);
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHomeHeaderEn header = TranslationsHomeHeaderEn._(_root);
}

// Path: address.header
class TranslationsAddressHeaderEn {
	TranslationsAddressHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select Address';
}

// Path: home.header
class TranslationsHomeHeaderEn {
	TranslationsHomeHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Teste';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'address.header.title': return 'Select Address';
			case 'home.header.title': return 'Teste';
			default: return null;
		}
	}
}

