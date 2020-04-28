use strict;
use warnings;

use App::Unicode::Block;
use English qw(-no_match_vars);
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 5;
use Test::NoWarnings;
use Test::Output;
use Unicode::UTF8 qw(decode_utf8);

# Test.
@ARGV = (
	'-l',
);
my $right_ret = <<'END';
Adlam
Aegean Numbers
Ahom
Alchemical Symbols
Alphabetic Presentation Forms
Anatolian Hieroglyphs
Ancient Greek Musical Notation
Ancient Greek Numbers
Ancient Symbols
Arabic
Arabic Extended-A
Arabic Mathematical Alphabetic Symbols
Arabic Presentation Forms-A
Arabic Presentation Forms-B
Arabic Supplement
Armenian
Arrows
Avestan
Balinese
Bamum
Bamum Supplement
Basic Latin
Bassa Vah
Batak
Bengali
Bhaiksuki
Block Elements
Bopomofo
Bopomofo Extended
Box Drawing
Brahmi
Braille Patterns
Buginese
Buhid
Byzantine Musical Symbols
CJK Compatibility
CJK Compatibility Forms
CJK Compatibility Ideographs
CJK Compatibility Ideographs Supplement
CJK Radicals Supplement
CJK Strokes
CJK Symbols and Punctuation
CJK Unified Ideographs
CJK Unified Ideographs Extension A
CJK Unified Ideographs Extension B
CJK Unified Ideographs Extension C
CJK Unified Ideographs Extension D
CJK Unified Ideographs Extension E
CJK Unified Ideographs Extension F
Carian
Caucasian Albanian
Chakma
Cham
Cherokee
Cherokee Supplement
Combining Diacritical Marks
Combining Diacritical Marks Extended
Combining Diacritical Marks Supplement
Combining Diacritical Marks for Symbols
Combining Half Marks
Common Indic Number Forms
Control Pictures
Coptic
Coptic Epact Numbers
Counting Rod Numerals
Cuneiform
Cuneiform Numbers and Punctuation
Currency Symbols
Cypriot Syllabary
Cyrillic
Cyrillic Extended-A
Cyrillic Extended-B
Cyrillic Extended-C
Cyrillic Supplement
Deseret
Devanagari
Devanagari Extended
Dingbats
Domino Tiles
Duployan
Early Dynastic Cuneiform
Egyptian Hieroglyphs
Elbasan
Emoticons
Enclosed Alphanumeric Supplement
Enclosed Alphanumerics
Enclosed CJK Letters and Months
Enclosed Ideographic Supplement
Ethiopic
Ethiopic Extended
Ethiopic Extended-A
Ethiopic Supplement
General Punctuation
Geometric Shapes
Geometric Shapes Extended
Georgian
Georgian Supplement
Glagolitic
Glagolitic Supplement
Gothic
Grantha
Greek Extended
Greek and Coptic
Gujarati
Gurmukhi
Halfwidth and Fullwidth Forms
Hangul Compatibility Jamo
Hangul Jamo
Hangul Jamo Extended-A
Hangul Jamo Extended-B
Hangul Syllables
Hanunoo
Hatran
Hebrew
High Private Use Surrogates
High Surrogates
Hiragana
IPA Extensions
Ideographic Description Characters
Ideographic Symbols and Punctuation
Imperial Aramaic
Inscriptional Pahlavi
Inscriptional Parthian
Javanese
Kaithi
Kana Extended-A
Kana Supplement
Kanbun
Kangxi Radicals
Kannada
Katakana
Katakana Phonetic Extensions
Kayah Li
Kharoshthi
Khmer
Khmer Symbols
Khojki
Khudawadi
Lao
Latin Extended Additional
Latin Extended-A
Latin Extended-B
Latin Extended-C
Latin Extended-D
Latin Extended-E
Latin-1 Supplement
Lepcha
Letterlike Symbols
Limbu
Linear A
Linear B Ideograms
Linear B Syllabary
Lisu
Low Surrogates
Lycian
Lydian
Mahajani
Mahjong Tiles
Malayalam
Mandaic
Manichaean
Marchen
Masaram Gondi
Mathematical Alphanumeric Symbols
Mathematical Operators
Meetei Mayek
Meetei Mayek Extensions
Mende Kikakui
Meroitic Cursive
Meroitic Hieroglyphs
Miao
Miscellaneous Mathematical Symbols-A
Miscellaneous Mathematical Symbols-B
Miscellaneous Symbols
Miscellaneous Symbols and Arrows
Miscellaneous Symbols and Pictographs
Miscellaneous Technical
Modi
Modifier Tone Letters
Mongolian
Mongolian Supplement
Mro
Multani
Musical Symbols
Myanmar
Myanmar Extended-A
Myanmar Extended-B
NKo
Nabataean
New Tai Lue
Newa
Number Forms
Nushu
Ogham
Ol Chiki
Old Hungarian
Old Italic
Old North Arabian
Old Permic
Old Persian
Old South Arabian
Old Turkic
Optical Character Recognition
Oriya
Ornamental Dingbats
Osage
Osmanya
Pahawh Hmong
Palmyrene
Pau Cin Hau
Phags-pa
Phaistos Disc
Phoenician
Phonetic Extensions
Phonetic Extensions Supplement
Playing Cards
Private Use Area
Psalter Pahlavi
Rejang
Rumi Numeral Symbols
Runic
Samaritan
Saurashtra
Sharada
Shavian
Shorthand Format Controls
Siddham
Sinhala
Sinhala Archaic Numbers
Small Form Variants
Sora Sompeng
Soyombo
Spacing Modifier Letters
Specials
Sundanese
Sundanese Supplement
Superscripts and Subscripts
Supplemental Arrows-A
Supplemental Arrows-B
Supplemental Arrows-C
Supplemental Mathematical Operators
Supplemental Punctuation
Supplemental Symbols and Pictographs
Supplementary Private Use Area-A
Supplementary Private Use Area-B
Sutton SignWriting
Syloti Nagri
Syriac
Syriac Supplement
Tagalog
Tagbanwa
Tags
Tai Le
Tai Tham
Tai Viet
Tai Xuan Jing Symbols
Takri
Tamil
Tangut
Tangut Components
Telugu
Thaana
Thai
Tibetan
Tifinagh
Tirhuta
Transport and Map Symbols
Ugaritic
Unified Canadian Aboriginal Syllabics
Unified Canadian Aboriginal Syllabics Extended
Vai
Variation Selectors
Variation Selectors Supplement
Vedic Extensions
Vertical Forms
Warang Citi
Yi Radicals
Yi Syllables
Yijing Hexagram Symbols
Zanabazar Square
END
stdout_is(
	sub {
		App::Unicode::Block->new->run;
		return;
	},
	$right_ret,
	'Run with listing of blocks.',
);

# Test.
@ARGV = (
	'Basic Latin',
);
$right_ret = <<'END';
┌────────────────────────────────────────┐
│              Basic Latin               │
├────────┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┤
│        │0│1│2│3│4│5│6│7│8│9│A│B│C│D│E│F│
├────────┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
│ U+000x │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │
├────────┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
│ U+001x │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │
├────────┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
│ U+002x │ │!│"│#│$│%│&│'│(│)│*│+│,│-│.│/│
├────────┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
│ U+003x │0│1│2│3│4│5│6│7│8│9│:│;│<│=│>│?│
├────────┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
│ U+004x │@│A│B│C│D│E│F│G│H│I│J│K│L│M│N│O│
├────────┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
│ U+005x │P│Q│R│S│T│U│V│W│X│Y│Z│[│\│]│^│_│
├────────┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
│ U+006x │`│a│b│c│d│e│f│g│h│i│j│k│l│m│n│o│
├────────┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
│ U+007x │p│q│r│s│t│u│v│w│x│y│z│{│|│}│~│ │
└────────┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┘

END
my $foo = stdout_is(
	sub {
		App::Unicode::Block->new->run;
		return;
	},
	$right_ret,
	"Run with listing of 'Basic Latin' unicode block.",
);

# Test.
@ARGV = (
	'Bad block'
);
eval {
	App::Unicode::Block->new->run;
};
is($EVAL_ERROR, "Unicode block 'Bad block' doesn't exist.\n",
	'Run with bad unicode block name.');
clean();

# Test.
@ARGV = (
	'-h',
);
$right_ret = <<'END';
Usage: t/App-Unicode-Block/04-run.t [-h] [-l] [--version] [unicode_block]
	-h		Help.
	-l		List of blocks.
	--version	Print version.
	unicode_block	Unicode block name for print.
END
stderr_is(
	sub {
		App::Unicode::Block->new->run;
		return;
	},
	$right_ret,
	'Run help.',
);
