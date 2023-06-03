import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;

/// A custom set of date patterns for the `ti` locale.
///
/// These are not accurate and are just a clone of the date patterns for the
/// `no` locale to demonstrate how one would write and use custom date patterns.
// #docregion Date
const Map<String, String> tiLocaleDatePatterns = <String, String>{
  'd': 'd',
  'E': 'ccc',
  'EEEE': 'cccc',
  'LLL': 'LLL',
  'LLLL': 'LLLL',
  'M': 'L',
  'Md': 'M/d',
  'MEd': 'EEE፣ M/d',
  'MMM': 'LLL',
  'MMMd': 'MMM d',
  'MMMEd': 'EEE፣ MMM d',
  'MMMM': 'LLLL',
  'MMMMd': 'MMMM d',
  'MMMMEEEEd': 'EEEE፣ MMMM d',
  'QQQ': 'QQQ',
  'QQQQ': 'QQQQ',
  'y': 'y',
  'yM': 'M/y',
  'yMd': 'd/M/y',
  'yMEd': 'EEE፣ d/M/y',
  'yMMM': 'MMM y',
  'yMMMd': 'd MMM y',
  'yMMMEd': 'EEE፣ MMM d y',
  'yMMMM': 'MMMM y',
  'yMMMMd': 'd MMMM y',
  'yMMMMEEEEd': 'y MMMM d, EEEE',
  'yQQQ': 'QQQ y',
  'yQQQQ': 'QQQQ y',
  'H': 'H',
  'Hm': 'HH:mm',
  'Hms': 'HH:mm:ss',
  'j': 'h a',
  'jm': 'h:mm a',
  'jms': 'h:mm:ss a',
  'jmv': 'h:mm a v',
  'jmz': 'h:mm a z',
  'jz': 'h a z',
  'm': 'm',
  'ms': 'mm:ss',
  's': 's',
  'v': 'v',
  'z': 'z',
  'zzzz': 'zzzz',
  'ZZZZ': 'ZZZZ',
};

/// A custom set of date symbols for the `` locale.
///
/// These are not accurate and are just a clone of the date symbols for the
/// `no` locale to demonstrate how one would write and use custom date symbols.
// #docregion Date2
const Map<String, Object> tiDateSymbols = <String, Object>{
  'NAME': 'ti',
  'ERAS': <String>[
    'ዓ/ዓ',
    'ዓ/ም',
  ],
  'ERANAMES': <String>[
    'ዓመተ ዓለም',
    'ዓመተ ምሕረት',
  ],
  'NARROWMONTHS': <String>[
    'ጃ',
    'ፌ',
    'ማ',
    'ኤ',
    'ሜ',
    'ጁ',
    'ጁ',
    'ኦ',
    'ሴ',
    'ኦ',
    'ኖ',
    'ዲ',
  ],
  'STANDALONENARROWMONTHS': <String>[
    'ጃ',
    'ፌ',
    'ማ',
    'ኤ',
    'ሜ',
    'ጁ',
    'ጁ',
    'ኦ',
    'ሴ',
    'ኦ',
    'ኖ',
    'ዲ',
  ],
  'MONTHS': <String>[
    'ጃንዩወሪ',
    'ፌብሩወሪ',
    'ማርች',
    'ኤፕሪል',
    'ሜይ',
    'ጁን',
    'ጁላይ',
    'ኦገስት',
    'ሴፕቴምበር',
    'ኦክቶበር',
    'ኖቬምበር',
    'ዲሴምበር',
  ],
  'STANDALONEMONTHS': <String>[
    'ጃንዩወሪ',
    'ፌብሩወሪ',
    'ማርች',
    'ኤፕሪል',
    'ሜይ',
    'ጁን',
    'ጁላይ',
    'ኦገስት',
    'ሴፕቴምበር',
    'ኦክቶበር',
    'ኖቬምበር',
    'ዲሴምበር',
  ],
  'SHORTMONTHS': <String>[
    'ጃንዩ',
    'ፌብሩ',
    'ማርች',
    'ኤፕሪ',
    'ሜይ',
    'ጁን',
    'ጁላይ',
    'ኦገስ',
    'ሴፕቴ',
    'ኦክቶ',
    'ኖቬም',
    'ዲሴም',
  ],
  'STANDALONESHORTMONTHS': <String>[
    'ጃንዩ',
    'ፌብሩ',
    'ማርች',
    'ኤፕሪ',
    'ሜይ',
    'ጁን',
    'ጁላይ',
    'ኦገስ',
    'ሴፕቴ',
    'ኦክቶ',
    'ኖቬም',
    'ዲሴም',
  ],
  'WEEKDAYS': <String>[
    'እሑድ',
    'ሰኞ',
    'ማክሰኞ',
    'ረቡዕ',
    'ሐሙስ',
    'ዓርብ',
    'ቅዳሜ',
  ],
  'STANDALONEWEEKDAYS': <String>[
    'ሰንበት',
    'ሰኒ',
    'ሰሉስ',
    'ረቡዕ',
    'ሓሙስ',
    'ዓርቢ',
    'ቀዳም',
  ],
  'SHORTWEEKDAYS': <String>[
    'ሰንበ',
    'ሰኒ',
    'ሰሉስ',
    'ረቡዕ',
    'ሓሙስ',
    'ዓርቢ',
    'ቀዳም',
  ],
  'STANDALONESHORTWEEKDAYS': <String>[
    'ሰንበ',
    'ሰኒ',
    'ሰሉስ',
    'ረቡዕ',
    'ሓሙስ',
    'ዓርቢ',
    'ቀዳም',
  ],
  'NARROWWEEKDAYS': <String>[
    'እ',
    'ሰ',
    'ማ',
    'ረ',
    'ሓ',
    'ዓ',
    'ቀ',
  ],
  'STANDALONENARROWWEEKDAYS': <String>[
    'እ',
    'ሰ',
    'ማ',
    'ረ',
    'ሓ',
    'ዓ',
    'ቀ',
  ],
  'SHORTQUARTERS': <String>[
    'ሩብ1',
    'ሩብ2',
    'ሩብ3',
    'ሩብ4',
  ],
  'QUARTERS': <String>[
    '1ኛው ሩብ',
    '2ኛው ሩብ',
    '3ኛው ሩብ',
    '4ኛው ሩብ',
  ],
  'AMPMS': <String>[
    'ጥዋት',
    'ከሰዓት',
  ],
  'DATEFORMATS': <String>[
    'y MMMM d, EEEE',
    'd MMMM y',
    'd MMM y',
    'dd/MM/y',
  ],
  'TIMEFORMATS': <String>[
    'h:mm:ss a zzzz',
    'h:mm:ss a z',
    'h:mm:ss a',
    'h:mm a',
  ],
  'FIRSTDAYOFWEEK': 6,
  'WEEKENDRANGE': <int>[
    5,
    6,
  ],
  'FIRSTWEEKCUTOFFDAY': 5,
  'DATETIMEFORMATS': <String>[
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
  ],
};

// #docregion Delegate
class _TiMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _TiMaterialLocalizationsDelegate();

  @override
  bool isSupported(final Locale locale) => locale.languageCode == 'ti';

  @override
  Future<MaterialLocalizations> load(final Locale locale) async {
    final String localeName = intl.Intl.canonicalizedLocale(locale.toString());

    // The locale (in this case `ti`) needs to be initialized into the custom
    // date symbols and patterns setup that Flutter uses.
    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: tiLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(tiDateSymbols),
    );

    return SynchronousFuture<MaterialLocalizations>(
      TiMaterialLocalizations(
        localeName: localeName,
        // The `intl` library's NumberFormat class is generated from CLDR data
        // (see https://github.com/dart-lang/intl/blob/master/lib/number_symbols_data.dart).
        // Unfortunately, there is no way to use a locale that isn't defined in
        // this map and the only way to work around this is to use a listed
        // locale's NumberFormat symbols. So, here we use the number formats
        // for 'en_US' instead.
        decimalFormat: intl.NumberFormat('#,##0.###', 'en_US'),
        twoDigitZeroPaddedFormat: intl.NumberFormat('00', 'en_US'),
        // DateFormat here will use the symbols and patterns provided in the
        // `date_symbol_data_custom.initializeDateFormattingCustom` call above.
        // However, an alternative is to simply use a supported locale's
        // DateFormat symbols, similar to NumberFormat above.
        fullYearFormat: intl.DateFormat('y', localeName),
        compactDateFormat: intl.DateFormat('yMd', localeName),
        shortDateFormat: intl.DateFormat('yMMMd', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        longDateFormat: intl.DateFormat('EEEE, MMMM d, y', localeName),
        yearMonthFormat: intl.DateFormat('MMMM y', localeName),
        shortMonthDayFormat: intl.DateFormat('MMM d'),
      ),
    );
  }

  @override
  bool shouldReload(final _TiMaterialLocalizationsDelegate old) => false;
}
// #enddocregion Delegate

/// A custom set of localizations for the 'ti' locale. In this example, only
/// the value for openAppDrawerTooltip was modified to use a custom message as
/// an example. Everything else uses the American English (en_US) messages
/// and formatting.
class TiMaterialLocalizations extends GlobalMaterialLocalizations {
  /// Create an instance of the translation bundle for Amharic.
  ///
  /// For details on the meaning of the arguments, see [GlobalMaterialLocalizations].
  const TiMaterialLocalizations({
    required super.fullYearFormat,
    required super.compactDateFormat,
    required super.shortDateFormat,
    required super.mediumDateFormat,
    required super.longDateFormat,
    required super.yearMonthFormat,
    required super.shortMonthDayFormat,
    required super.decimalFormat,
    required super.twoDigitZeroPaddedFormat,
    super.localeName = 'ti',
  });

  @override
  String get aboutListTileTitleRaw => r'ስለ $applicationName';

  @override
  String get alertDialogLabel => 'ማንቂያ';

  @override
  String get anteMeridiemAbbreviation => 'ጥዋት';

  @override
  String get backButtonTooltip => 'ተመለስ';

  @override
  String get bottomSheetLabel => 'የግርጌ ሉህ';

  @override
  String get calendarModeButtonLabel => 'ወደ የቀን መቁጠሪያ ቀይር';

  @override
  String get cancelButtonLabel => 'ግደፍ';

  @override
  String get closeButtonLabel => 'ዕፆ';

  @override
  String get closeButtonTooltip => 'ዕፆ';

  @override
  String get collapsedHint => 'Expanded';

  @override
  String get collapsedIconTapHint => 'ዘርጋ';

  @override
  String get continueButtonLabel => 'ቀፅል';

  @override
  String get copyButtonLabel => 'ቅዳሕ';

  @override
  String get currentDateLabel => 'ሎሚ';

  @override
  String get cutButtonLabel => 'ቁረፅ';

  @override
  String get dateHelpText => 'ወወ/መመ/ዓዓዓዓ';

  @override
  String get dateInputLabel => 'ቀን ያስገቡ';

  @override
  String get dateOutOfRangeLabel => 'ከክልል ውጭ።';

  @override
  String get datePickerHelpText => 'ቀን ይምረጡ';

  @override
  String get dateRangeEndDateSemanticLabelRaw => r'የማብቂያ ቀን $fullDate';

  @override
  String get dateRangeEndLabel => 'የመጨረሻ ቀን';

  @override
  String get dateRangePickerHelpText => 'ክልል ይምረጡ';

  @override
  String get dateRangeStartDateSemanticLabelRaw => r'የመጀመሪያ ቀን $fullDate';

  @override
  String get dateRangeStartLabel => 'የመጀመሪያ ቀን';

  @override
  String get dateSeparator => '/';

  @override
  String get deleteButtonTooltip => 'ሰርዝ';

  @override
  String get dialModeButtonLabel => 'ወደ መደወያ መራጭ ሁነታ ቀይር';

  @override
  String get dialogLabel => 'መገናኛ';

  @override
  String get drawerLabel => 'የዳሰሳ ምናሌ';

  @override
  String get expandedHint => 'Collapsed';

  @override
  String get expandedIconTapHint => 'ሰብስብ';

  @override
  String get expansionTileCollapsedHint => 'double tap to expand';

  @override
  String get expansionTileCollapsedTapHint => 'Expand for more details';

  @override
  String get expansionTileExpandedHint => "double tap to collapse'";

  @override
  String get expansionTileExpandedTapHint => 'Collapse';

  @override
  String get firstPageTooltip => 'የመጀመሪያው ገጽ';

  @override
  String get hideAccountsLabel => 'መለያዎችን ደብቅ';

  @override
  String get inputDateModeButtonLabel => 'ወደ ግቤት ቀይር';

  @override
  String get inputTimeModeButtonLabel => 'ወደ ጽሁፍ ግቤት ሁነታ ቀይር';

  @override
  String get invalidDateFormatLabel => 'ልክ ያልሆነ ቅርጸት።';

  @override
  String get invalidDateRangeLabel => 'ልክ ያልኾነ ክልል።';

  @override
  String get invalidTimeLabel => 'የሚሠራ ሰዓት ያስገቡ';

  @override
  String get keyboardKeyAlt => 'Alt';

  @override
  String get keyboardKeyAltGraph => 'AltGr';

  @override
  String get keyboardKeyBackspace => 'የኋሊት መደምሰሻ';

  @override
  String get keyboardKeyCapsLock => 'Caps Lock';

  @override
  String get keyboardKeyChannelDown => 'ጣቢያ ወደ ታች';

  @override
  String get keyboardKeyChannelUp => 'ጣቢያ ወደ ላይ';

  @override
  String get keyboardKeyControl => 'Ctrl';

  @override
  String get keyboardKeyDelete => 'Del';

  @override
  String get keyboardKeyEject => 'አስወጣ';

  @override
  String get keyboardKeyEnd => 'ጨርስ';

  @override
  String get keyboardKeyEscape => 'Esc';

  @override
  String get keyboardKeyFn => 'Fn';

  @override
  String get keyboardKeyHome => 'መነሻ';

  @override
  String get keyboardKeyInsert => 'ኣእትው';

  @override
  String get keyboardKeyMeta => 'ሜታ';

  @override
  String get keyboardKeyMetaMacOs => 'ትዕዛዝ';

  @override
  String get keyboardKeyMetaWindows => 'Win';

  @override
  String get keyboardKeyNumLock => 'Num Lock';

  @override
  String get keyboardKeyNumpad0 => 'Num 0';

  @override
  String get keyboardKeyNumpad1 => 'Num 1';

  @override
  String get keyboardKeyNumpad2 => 'Num 2';

  @override
  String get keyboardKeyNumpad3 => 'Num 3';

  @override
  String get keyboardKeyNumpad4 => 'Num 4';

  @override
  String get keyboardKeyNumpad5 => 'Num 5';

  @override
  String get keyboardKeyNumpad6 => 'Num 6';

  @override
  String get keyboardKeyNumpad7 => 'Num 7';

  @override
  String get keyboardKeyNumpad8 => 'Num 8';

  @override
  String get keyboardKeyNumpad9 => 'Num 9';

  @override
  String get keyboardKeyNumpadAdd => 'Num +';

  @override
  String get keyboardKeyNumpadComma => 'Num ,';

  @override
  String get keyboardKeyNumpadDecimal => 'Num .';

  @override
  String get keyboardKeyNumpadDivide => '+NUM';

  @override
  String get keyboardKeyNumpadEnter => 'Num Enter';

  @override
  String get keyboardKeyNumpadEqual => 'Num =';

  @override
  String get keyboardKeyNumpadMultiply => 'Num *';

  @override
  String get keyboardKeyNumpadParenLeft => 'Num (';

  @override
  String get keyboardKeyNumpadParenRight => 'Num )';

  @override
  String get keyboardKeyNumpadSubtract => 'Num -';

  @override
  String get keyboardKeyPageDown => 'PgDown';

  @override
  String get keyboardKeyPageUp => 'PgUp';

  @override
  String get keyboardKeyPower => 'ኃይል';

  @override
  String get keyboardKeyPowerOff => 'ኃይል አጥፋ';

  @override
  String get keyboardKeyPrintScreen => 'Print Screen';

  @override
  String get keyboardKeyScrollLock => 'Scroll Lock';

  @override
  String get keyboardKeySelect => 'ምረፅ';

  @override
  String get keyboardKeyShift => 'ቐያይር';

  @override
  String get keyboardKeySpace => 'ክፍተት';

  @override
  String get lastPageTooltip => 'የመጨረሻው ገጽ';

  @override
  String? get licensesPackageDetailTextFew => null;

  @override
  String? get licensesPackageDetailTextMany => null;

  @override
  String? get licensesPackageDetailTextOne => '1 ፈቓድ';

  @override
  String get licensesPackageDetailTextOther => r'$licenseCount ፈቃዶች';

  @override
  String? get licensesPackageDetailTextTwo => null;

  @override
  String? get licensesPackageDetailTextZero => 'No licenses';

  @override
  String get licensesPageTitle => 'ፈቓዳት';

  @override
  String get menuBarMenuLabel => 'የምናሌ አሞሌ ምናሌ';

  @override
  String get modalBarrierDismissLabel => 'አሰናብት';

  @override
  String get moreButtonTooltip => 'ተወሳኺ';

  @override
  String get nextMonthTooltip => 'ቀፃሊ ወርሒ';

  @override
  String get nextPageTooltip => 'ቀፃሊ ገፅ';

  @override
  String get okButtonLabel => 'እሺ';

  @override
  String get openAppDrawerTooltip => 'የዳሰሳ ምናሌን ክፈት';

  @override
  String get pageRowsInfoTitleRaw => r'$firstRow–$lastRow ከ$rowCount ውስጥ';

  @override
  String get pageRowsInfoTitleApproximateRaw =>
      r'$firstRow–$lastRow ከ$rowCount ያህል ውስጥ';

  @override
  String get pasteButtonLabel => 'ለጥፍ';

  @override
  String get popupMenuLabel => 'የብቅ-ባይ ምናሌ';

  @override
  String get postMeridiemAbbreviation => 'ከሰዓት';

  @override
  String get previousMonthTooltip => 'ቀዳሚ ወር';

  @override
  String get previousPageTooltip => 'ቀዳሚ ገጽ';

  @override
  String get refreshIndicatorSemanticLabel => 'ሓድስ';

  @override
  String? get remainingTextFieldCharacterCountFew => null;

  @override
  String? get remainingTextFieldCharacterCountMany => null;

  @override
  String? get remainingTextFieldCharacterCountOne => '1 ቁምፊ ይቀራል';

  @override
  String get remainingTextFieldCharacterCountOther =>
      r'$remainingCount ቁምፊዎች ይቀራሉ';

  @override
  String? get remainingTextFieldCharacterCountTwo => null;

  @override
  String? get remainingTextFieldCharacterCountZero => null;

  @override
  String get reorderItemDown => 'ወደ ታች ውሰድ';

  @override
  String get reorderItemLeft => 'ወደ ግራ ውሰድ';

  @override
  String get reorderItemRight => 'ወደ ቀኝ ውሰድ';

  @override
  String get reorderItemToEnd => 'ወደ መጨረሻ ውሰድ';

  @override
  String get reorderItemToStart => 'ወደ መጀመሪያ ውሰድ';

  @override
  String get reorderItemUp => 'ወደ ላይ ውሰድ';

  @override
  String get rowsPerPageTitle => 'ረድፎች በገጽ፦';

  @override
  String get saveButtonLabel => 'ኣቐምጥ';

  @override
  String get scrimLabel => 'ገዳቢ';

  @override
  String get scrimOnTapHintRaw => r'$modalRouteContentNameን ዝጋ';

  @override
  ScriptCategory get scriptCategory => ScriptCategory.englishLike;

  @override
  String get searchFieldLabel => 'ይፈልጉ';

  @override
  String get selectAllButtonLabel => 'ሁሉንም ምረጥ';

  @override
  String get selectYearSemanticsLabel => 'ዓመት ይምረጡ';

  @override
  String? get selectedRowCountTitleFew => null;

  @override
  String? get selectedRowCountTitleMany => null;

  @override
  String? get selectedRowCountTitleOne => '1 ንጥል ተመርጧል';

  @override
  String get selectedRowCountTitleOther => r'$selectedRowCount ንጥሎች ተመርጠዋል';

  @override
  String? get selectedRowCountTitleTwo => null;

  @override
  String? get selectedRowCountTitleZero => null;

  @override
  String get showAccountsLabel => 'መለያዎችን አሳይ';

  @override
  String get showMenuTooltip => 'ምናሌን አሳይ';

  @override
  String get signedInLabel => 'በመለያ ገብቷል';

  @override
  String get tabLabelRaw => r'ትር $tabIndex ከ$tabCount';

  @override
  TimeOfDayFormat get timeOfDayFormatRaw => TimeOfDayFormat.H_colon_mm;

  @override
  String get timePickerDialHelpText => 'ጊዜ ይምረጡ';

  @override
  String get timePickerHourLabel => 'ሰዓት';

  @override
  String get timePickerHourModeAnnouncement => 'ሰዓታትን ምረጥ';

  @override
  String get timePickerInputHelpText => 'ሰዓት ያስገቡ';

  @override
  String get timePickerMinuteLabel => 'ደቒቓ';

  @override
  String get timePickerMinuteModeAnnouncement => 'ደቂቃዎችን ይምረጡ';

  @override
  String get unspecifiedDate => 'መዓልቲ';

  @override
  String get unspecifiedDateRange => 'የቀኖች ርዝመት';

  @override
  String get viewLicensesButtonLabel => 'ፈቃዶችን ይመልከቱ';

  static const LocalizationsDelegate<MaterialLocalizations> delegate =
      _TiMaterialLocalizationsDelegate();
}
