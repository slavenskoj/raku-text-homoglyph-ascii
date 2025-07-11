unit module Text::Homoglyph::ASCII;

# Homoglyph mappings - Unicode characters that look like ASCII characters
# are mapped to their ASCII equivalents

my %lookalikes = 
    # Armenian
    'շ' => '2', 'Ց' => '8',
    'Ե' => 'b', 'Ժ' => 'd', 'ժ' => 'd', 'ց' => 'g', 'ո' => 'n', 'ռ' => 'n', 
    'օ' => 'o', 'ս' => 'u', 'ա' => 'w',
    'Յ' => 'B', 'Օ' => 'O', 'Ծ' => 'O', 'Տ' => 'S', 'Ա' => 'U', 'Մ' => 'U', 'Ս' => 'U',
    
    # Cherokee
    'Ꮎ' => '0', 'Ꮞ' => '4', 'Ꮾ' => '6', 'Ꮽ' => '9',
    'Ꮟ' => 'b', 'Ꮷ' => 'd', 'Ꮄ' => 'd', 'Ꮅ' => 'f', 'Ᏺ' => 'fi', 'Ꮒ' => 'h', 
    'Ꮵ' => 'h', 'Ꭵ' => 'i', 'Ꮣ' => 'l', 'Ꮁ' => 'r', 'Ꮗ' => 'w', 'Ꮚ' => 'w', 
    'Ꭹ' => 'y', 'Ꮍ' => 'y',
    'Ꭺ' => 'A', 'Ꭿ' => 'A', 'Ꮑ' => 'A', 'Ᏼ' => 'B', 'Ᏸ' => 'B', 'Ꮯ' => 'C', 
    'Ꮳ' => 'C', 'Ꮸ' => 'C', 'Ꭰ' => 'D', 'Ꭼ' => 'E', 'Ꮛ' => 'E', 'Ꮐ' => 'G', 
    'Ꮹ' => 'G', 'Ꮆ' => 'G', 'Ᏻ' => 'G', 'Ꮋ' => 'H', 'Ꭸ' => 'I', 'Ꮀ' => 'I', 
    'Ꮠ' => 'I', 'Ꭻ' => 'J', 'Ꮶ' => 'K', 'Ꮮ' => 'L', 'Ꮭ' => 'L', 'Ꮇ' => 'M', 
    'Ꭴ' => 'O', 'Ꮻ' => 'O', 'Ꮕ' => 'O', 'Ꮊ' => 'OI', 'Ꮲ' => 'P', 'Ꭾ' => 'P', 'Ꭱ' => 'R', 
    'Ꮢ' => 'R', 'Ꮪ' => 'S', 'Ꮥ' => 'S', 'Ꭶ' => 'S', 'Ꭲ' => 'T', 'Ꮜ' => 'U', 
    'Ꮩ' => 'V', 'Ꮴ' => 'V', 'Ꮙ' => 'V', 'Ꮃ' => 'W', 'Ꮤ' => 'W', 'Ꮓ' => 'Z',
    
    # Deseret
    '𐐞' => '6',
    '𐐀' => 'a', '𐑇' => 'b', '𐐽' => 'c', '𐐼' => 'd', '𐑊' => 'l', '𐐢' => 'l', 
    '𐐬' => 'o', '𐐫' => 'o', '𐑁' => 'p', '𐑈' => 's', '𐐷' => 'v', '𐐶' => 'w', 
    '𐑄' => 'y',
    '𐐚' => 'B', '𐐕' => 'C', '𐐟' => 'D', '𐐁' => 'E', '𐐛' => 'L', '𐑃' => 'L', 
    '𐐄' => 'O', '𐐃' => 'O', '𐐙' => 'P', '𐐠' => 'S', '𐐏' => 'V', '𐐎' => 'W', 
    '𐐜' => 'Y',
    
    # Cyrillic
    'О' => '0', 'Ф' => '0', 'ф' => '0', 'З' => '3', 'з' => '3',
    'а' => 'a', 'Ь' => 'b', 'ь' => 'b', 'б' => 'b', 'Б' => 'b', 'с' => 'c', 
    'е' => 'e', 'і' => 'i', 'ї' => 'i', 'ј' => 'j', 'ю' => 'io', 'п' => 'n', 'о' => 'o', 'р' => 'p', 
    'г' => 'r', 'Г' => 'r', 'ѕ' => 's', 'ц' => 'u', 'ѵ' => 'v', 'ш' => 'w', 
    'щ' => 'w', 'ѡ' => 'w', 'х' => 'x', 'у' => 'y', 'У' => 'Y', 'ч' => 'y', 'Ч' => 'y',
    'ԛ' => 'q',  # Cyrillic qa
    'А' => 'A', 'В' => 'B', 'в' => 'B', 'С' => 'C', 'Е' => 'E', 'Н' => 'H', 
    'н' => 'n', 'І' => 'I', 'Ї' => 'I', 'Ј' => 'J', 'Ю' => 'IO', 'К' => 'K', 'к' => 'k', 'М' => 'M', 
    'м' => 'm', 'Р' => 'P', 'Ѕ' => 'S', 'Т' => 'T', 'т' => 't', 'Ц' => 'U', 
    'Ѵ' => 'V', 'Ш' => 'W', 'Щ' => 'W', 'Ѡ' => 'W', 'Х' => 'X',
    
    # Greek
    'Θ' => '0', 'θ' => '0',
    'α' => 'a', 'ϲ' => 'c', 'ς' => 'c', 'ι' => 'l', 'η' => 'n', 'π' => 'n', 
    'ο' => 'o', 'σ' => 'o', 'ρ' => 'p', 'Γ' => 'r', 'υ' => 'u', 'μ' => 'u', 
    'ν' => 'v', 'ω' => 'w', 'ψ' => 'w', 'γ' => 'y',
    'Α' => 'A', '𝚲' => 'A', 'Δ' => 'A', 'Β' => 'B', 'β' => 'B', 'Ε' => 'E', 
    'Σ' => 'E', 'ε' => 'E', 'ξ' => 'E', 'Η' => 'H', 'Ι' => 'I', 'Κ' => 'K', 
    'κ' => 'K', 'Μ' => 'M', 'Ν' => 'N', 'Ο' => 'O', 'Ω' => 'O', 'Ρ' => 'P', 
    'Τ' => 'T', 'τ' => 'T', 'Ψ' => 'W', 'Χ' => 'X', 'χ' => 'X', 'Υ' => 'Y', 'Ζ' => 'Z',
    
    # Greek Mathematical Typeface
    '𝛉' => '0', '𝜃' => '0', '𝜽' => '0', '𝝷' => '0', '𝞱' => '0', '𝚯' => '0', 
    '𝚹' => '0', '𝛩' => '0', '𝛳' => '0', '𝜣' => '0', '𝜭' => '0', '𝝝' => '0', 
    '𝝧' => '0', '𝞗' => '0', '𝞡' => '0',
    '𝛂' => 'a', '𝛼' => 'a', '𝜶' => 'a', '𝝰' => 'a', '𝞪' => 'a',
    '𝞁' => 'c', '𝞻' => 'c',
    '𝛊' => 'l', '𝜄' => 'l', '𝜾' => 'l', '𝝸' => 'l', '𝞲' => 'l',
    '𝛈' => 'n', '𝜂' => 'n', '𝜼' => 'n', '𝝶' => 'n', '𝞰' => 'n',
    '𝛐' => 'o', '𝜊' => 'o', '𝝄' => 'o', '𝝾' => 'o', '𝞸' => 'o', 
    '𝛔' => 'o', '𝜎' => 'o', '𝞂' => 'o', '𝞼' => 'o',
    '𝛒' => 'p', '𝞀' => 'p', '𝞺' => 'p',
    '𝜌' => 'q', '𝝆' => 'q',
    '𝚪' => 'r', '𝛤' => 'r', '𝜞' => 'r', '𝝘' => 'r', '𝞒' => 'r',
    '𝛕' => 't', '𝜏' => 't', '𝝉' => 't', '𝞃' => 't', '𝞽' => 't',
    '𝛍' => 'u', '𝜇' => 'u', '𝝁' => 'u', '𝝻' => 'u', '𝞵' => 'u', 
    '𝛖' => 'u', '𝜐' => 'u', '𝝊' => 'u', '𝞄' => 'u', '𝞾' => 'u',
    '𝛎' => 'v', '𝜈' => 'v', '𝝂' => 'v', '𝝼' => 'v', '𝞶' => 'v',
    '𝛚' => 'w', '𝜔' => 'w', '𝝎' => 'w', '𝞈' => 'w', '𝟂' => 'w', 
    '𝛙' => 'w', '𝜓' => 'w', '𝝍' => 'w', '𝞇' => 'w', '𝟁' => 'w',
    '𝛄' => 'y', '𝛾' => 'y', '𝜸' => 'y', '𝝲' => 'y', '𝞬' => 'y',
    '𝚨' => 'A', '𝛢' => 'A', '𝜜' => 'A', '𝝖' => 'A', '𝞐' => 'A', 
    '𝛬' => 'A', '𝜦' => 'A', '𝝠' => 'A', '𝞚' => 'A', '𝚫' => 'A', 
    '𝛥' => 'A', '𝜟' => 'A', '𝝙' => 'A', '𝞓' => 'A',
    '𝚩' => 'B', '𝛣' => 'B', '𝜝' => 'B', '𝝗' => 'B', '𝞑' => 'B', 
    '𝛃' => 'B', '𝛽' => 'B', '𝜷' => 'B', '𝝱' => 'B', '𝞫' => 'B',
    '𝚬' => 'E', '𝛦' => 'E', '𝜠' => 'E', '𝝚' => 'E', '𝞔' => 'E', 
    '𝚺' => 'E', '𝛴' => 'E', '𝜮' => 'E', '𝝨' => 'E', '𝞢' => 'E', 
    '𝛆' => 'E', '𝜀' => 'E', '𝜺' => 'E', '𝝴' => 'E', '𝞮' => 'E', 
    '𝛏' => 'E', '𝜉' => 'E', '𝝃' => 'E', '𝝽' => 'E', '𝞷' => 'E',
    '𝟊' => 'F', '𝟋' => 'F',
    '𝚮' => 'H', '𝛨' => 'H', '𝜢' => 'H', '𝝜' => 'H', '𝞖' => 'H',
    '𝚰' => 'I', '𝛪' => 'I', '𝜤' => 'I', '𝝞' => 'I', '𝞘' => 'I',
    '𝚱' => 'K', '𝛫' => 'K', '𝜥' => 'K', '𝝟' => 'K', '𝞙' => 'K', 
    '𝛋' => 'K', '𝜅' => 'K', '𝜿' => 'K', '𝝹' => 'K', '𝞳' => 'K',
    '𝚳' => 'M', '𝛭' => 'M', '𝜧' => 'M', '𝝡' => 'M', '𝞛' => 'M',
    '𝚴' => 'N', '𝛮' => 'N', '𝜨' => 'N', '𝝢' => 'N', '𝞜' => 'N',
    '𝚶' => 'O', '𝛰' => 'O', '𝜪' => 'O', '𝝤' => 'O', '𝞞' => 'O', 
    '𝛀' => 'O', '𝛺' => 'O', '𝜴' => 'O', '𝝮' => 'O', '𝞨' => 'O',
    '𝚸' => 'P', '𝛲' => 'P', '𝜬' => 'P', '𝝦' => 'P', '𝞠' => 'P',
    '𝚻' => 'T', '𝛵' => 'T', '𝜯' => 'T', '𝝩' => 'T', '𝞣' => 'T',
    '𝚿' => 'W', '𝛹' => 'W', '𝜳' => 'W', '𝝭' => 'W', '𝞧' => 'W',
    '𝚾' => 'X', '𝛸' => 'X', '𝜲' => 'X', '𝝬' => 'X', '𝞦' => 'X', 
    '𝛘' => 'X', '𝜒' => 'X', '𝝌' => 'X', '𝞆' => 'X', '𝟀' => 'X',
    '𝚼' => 'Y', '𝛶' => 'Y', '𝜰' => 'Y', '𝝪' => 'Y', '𝞤' => 'Y',
    '𝚭' => 'Z', '𝛧' => 'Z', '𝜡' => 'Z', '𝝛' => 'Z', '𝞕' => 'Z',
    
    # Georgian
    'ვ' => '3', 'კ' => '3', 'პ' => '3', 'ჳ' => '3', 'ჴ' => '3',
    'Ⴆ' => 'b', 'ხ' => 'b', 'Ⴊ' => 'b', 'ს' => 'b', 'ძ' => 'd', 'ქ' => 'd', 
    'Ⴙ' => 'h', 'Ⴑ' => 'l', 'Ⴠ' => 'l', 'ო' => 'm', 'ი' => 'o', 
    'Ⴘ' => 'y', 'Ⴁ' => 'y', 'Ⴏ' => 'y', 'Ⴣ' => 'y', 'Ⴗ' => 'y', 'ყ' => 'y',
    'Ⴚ' => 'C', 'Ⴐ' => 'J', 'Ⴍ' => 'O', 'Ⴓ' => 'O', 'Ⴝ' => 'S', 'Ⴎ' => 'U', 'Ⴤ' => 'Y',
    
    # Latin
    'ʘ' => '0', 'Ʒ' => '3', 'Ȝ' => '3', 'ȝ' => '3', 'ɜ' => '3', 'ʒ' => '3', 
    'ᴈ' => '3', 'ᴣ' => '3', 'Ꝫ' => '3', 'ꝫ' => '3', 'Ƽ' => '5', 'ƽ' => '5', 
    'Ỽ' => '6', 'ꝸ' => '8', 'Ꝯ' => '9',
    'ꜳ' => 'aa', 'æ' => 'ae', 'ꜵ' => 'ao', 'ꜷ' => 'au', 'ꜹ' => 'av',
    'Ƅ' => 'b', 'ƅ' => 'b', 'ꝱ' => 'd', 'ǳ' => 'dz', 'ʣ' => 'dz',
    'ſ' => 'f', 'ẜ' => 'f', 'ẝ' => 'f', 'ﬀ' => 'ff', 'ﬃ' => 'ffi', 
    'ﬄ' => 'ffl', 'ﬁ' => 'fi', 'ﬂ' => 'fl', 'ʩ' => 'fn',
    'ɡ' => 'g', 'ꝯ' => 'g', 'ꜧ' => 'h', 'ƕ' => 'hv', 'ĳ' => 'ij', 'ȷ' => 'j',
    'ɩ' => 'l', 'Ɩ' => 'l', 'ꝲ' => 'l', 'ǈ' => 'lj', 'ǉ' => 'lj', 'ʪ' => 'ls', 'ʫ' => 'lz',
    'ꝳ' => 'm', 'ꝴ' => 'n', 'ǌ' => 'nj', 'ᴏ' => 'o', 'œ' => 'oe', 'ƣ' => 'oi', 'ꝏ' => 'oo',
    'ƿ' => 'p', 'þ' => 'p', 'ꝵ' => 'r', 'ꞅ' => 'r', 'ﬆ' => 'st', '✝' => 't', 
    'ʧ' => 'tf', 'ʦ' => 'ts', 'ᴜ' => 'u', 'ᴠ' => 'v', 'ꝡ' => 'vy', 'ᴡ' => 'w', 'ᴢ' => 'z',
    'ᴀ' => 'A', 'Ꜳ' => 'AA', 'Æ' => 'AE', 'ᴁ' => 'AE', 'Ꜷ' => 'AJ', 'Ꜵ' => 'AO', 
    'Ꜹ' => 'AV', 'Ꜽ' => 'AY', 'ʙ' => 'B', 'ß' => 'B', 'ᴄ' => 'C', 'ʗ' => 'C', 
    'ᴅ' => 'D', 'Ð' => 'D', 'Ɖ' => 'D', 'ǲ' => 'Dz', 'Ǳ' => 'DZ',
    'ᴇ' => 'E', 'Ɛ' => 'E', 'Ʃ' => 'E', 'ɛ' => 'E', 'Ꜫ' => 'E', 'ꜫ' => 'E',
    'ꜰ' => 'F', 'ꝼ' => 'F', 'ɢ' => 'G', 'ʜ' => 'H', 'Ꜧ' => 'H', 'Ƕ' => 'Hi',
    'ǀ' => 'I', 'ɪ' => 'I', 'ǁ' => 'II', 'Ĳ' => 'IJ', 'ᴊ' => 'J', 'ᴋ' => 'K', 'ĸ' => 'K',
    'ʟ' => 'L', 'Ǉ' => 'LJ', 'ᴍ' => 'M', 'ɴ' => 'N', 'ǋ' => 'Nj', 'Ǌ' => 'Nj',
    'Ꝺ' => 'O', 'Œ' => 'OE', 'Ƣ' => 'OI', 'Ꝏ' => 'OO',
    'ᴘ' => 'P', 'Ƿ' => 'P', 'ʀ' => 'R', 'Ʀ' => 'R', 'ꝶ' => 'R', 'ꜱ' => 'S', 
    'ᴛ' => 'T', 'Ʊ' => 'U', 'Ꝡ' => 'VY', 'ꟿ' => 'W', 'ʏ' => 'Y', 'Ɣ' => 'Y',
    
    # Lisu
    'ꓒ' => 'd',
    'ꓮ' => 'A', 'ꓐ' => 'B', 'ꓚ' => 'C', 'ꓓ' => 'D', 'ꓰ' => 'E', 'ꓝ' => 'F', 
    'ꓖ' => 'G', 'ꓧ' => 'H', 'ꓲ' => 'I', 'ꓙ' => 'J', 'ꓗ' => 'K', 'ꓡ' => 'L', 
    'ꓟ' => 'M', 'ꓠ' => 'N', 'ꓳ' => 'O', 'ꓑ' => 'P', 'ꓣ' => 'R', 'ꓢ' => 'S', 
    'ꓔ' => 'T', 'ꓴ' => 'U', 'ꓦ' => 'V', 'ꓪ' => 'W', 'ꓫ' => 'X', 'ꓬ' => 'Y', 'ꓜ' => 'Z',
    
    # Myanmar
    'ဒ' => '3', 'င' => 'c', 'က' => 'm', 'ဝ' => 'o', 'ထ' => 'oo', 'ယ' => 'w',
    
    # Roman Numerals
    'ⅽ' => 'c', 'ⅾ' => 'd', 'ⅰ' => 'i', 'ⅱ' => 'ii', 'ⅲ' => 'iii', 'ⅳ' => 'iv', 
    'ⅸ' => 'ix', 'ⅼ' => 'l', 'ⅿ' => 'm', 'ⅴ' => 'v', 'ⅵ' => 'vi', 'ⅶ' => 'vii', 
    'ⅷ' => 'viii', 'ⅹ' => 'x', 'ⅺ' => 'xi', 'ⅻ' => 'xii',
    'Ⅽ' => 'C', 'ↅ' => 'C', 'Ⅾ' => 'D', 'Ⅰ' => 'I', 'Ⅱ' => 'II', 'Ⅲ' => 'III', 
    'Ⅳ' => 'IV', 'Ⅸ' => 'IX', 'Ⅼ' => 'L', 'Ⅿ' => 'M', 'Ⅴ' => 'V', 'Ⅵ' => 'VI', 
    'Ⅶ' => 'VII', 'Ⅷ' => 'VIII', 'Ⅹ' => 'X', 'Ⅺ' => 'XI', 'Ⅻ' => 'XII',
    
    # Runic
    'ᛐ' => '1',
    'ᛒ' => 'B', 'ᛊ' => 'E', 'ᛁ' => 'I', 'ᛕ' => 'K', 'ᛖ' => 'M', 'ᚺ' => 'N', 
    'ᚹ' => 'P', 'ᚱ' => 'R', 'ᚷ' => 'X',
    
    # Math Symbols
    '∅' => '0', '϶' => '3',
    '∂' => 'a', '⊂' => 'c', '⨍' => 'f', '⨅' => 'n', '∪' => 'u', '⋃' => 'u', 
    '⋁' => 'v', '⋎' => 'v', '⨉' => 'x', '×' => 'x',
    '∁' => 'C', '⫐' => 'D', '⋿' => 'E', '∈' => 'E', '∑' => 'E', '⨊' => 'E', 
    '⎮' => 'I', '⎪' => 'I', '∟' => 'L', '⟙' => 'T', '⊤' => 'T', 
    '⥾' => 'T', '√' => 'V',
    
    # Ballot
    '✗' => 'X', '🗶' => 'x', '🗴' => 'x', '✘' => 'X',
    
    # Bold
    '𝟎' => '0', '𝟏' => '1', '𝟐' => '2', '𝟑' => '3', '𝟒' => '4', 
    '𝟓' => '5', '𝟔' => '6', '𝟕' => '7', '𝟖' => '8', '𝟗' => '9',
    '𝐚' => 'a', '𝐛' => 'b', '𝐜' => 'c', '𝐝' => 'd', '𝐞' => 'e', '𝐟' => 'f', 
    '𝐠' => 'g', '𝐡' => 'h', '𝐢' => 'i', '𝐣' => 'j', '𝐤' => 'k', '𝐥' => 'l', 
    '𝐦' => 'm', '𝐧' => 'n', '𝐨' => 'o', '𝐩' => 'p', '𝐪' => 'q', '𝐫' => 'r', 
    '𝐬' => 's', '𝐭' => 't', '𝐮' => 'u', '𝐯' => 'v', '𝐰' => 'w', '𝐱' => 'x', 
    '𝐲' => 'y', '𝐳' => 'z',
    '𝐀' => 'A', '𝐁' => 'B', '𝐂' => 'C', '𝐃' => 'D', '𝐄' => 'E', '𝐅' => 'F', 
    '𝐆' => 'G', '𝐇' => 'H', '𝐈' => 'I', '𝐉' => 'J', '𝐊' => 'K', '𝐋' => 'L', 
    '𝐌' => 'M', '𝐍' => 'N', '𝐎' => 'O', '𝐏' => 'P', '𝐐' => 'Q', '𝐑' => 'R', 
    '𝐒' => 'S', '𝐓' => 'T', '𝐔' => 'U', '𝐕' => 'V', '𝐖' => 'W', '𝐗' => 'X', 
    '𝐘' => 'Y', '𝐙' => 'Z',
    
    # Bold Fraktur
    '𝖆' => 'a', '𝖇' => 'b', '𝖈' => 'c', '𝖉' => 'd', '𝖊' => 'e', '𝖋' => 'f', 
    '𝖌' => 'g', '𝖍' => 'h', '𝖎' => 'i', '𝖏' => 'j', '𝖐' => 'k', '𝖑' => 'l', 
    '𝖒' => 'm', '𝖓' => 'n', '𝖔' => 'o', '𝖕' => 'p', '𝖖' => 'q', '𝖗' => 'r', 
    '𝖘' => 's', '𝖙' => 't', '𝖚' => 'u', '𝖛' => 'v', '𝖜' => 'w', '𝖝' => 'x', 
    '𝖞' => 'y', '𝖟' => 'z',
    '𝕬' => 'A', '𝕭' => 'B', '𝕮' => 'C', '𝕯' => 'D', '𝕰' => 'E', '𝕱' => 'F', 
    '𝕲' => 'G', '𝕳' => 'H', '𝕴' => 'I', '𝕵' => 'J', '𝕶' => 'K', '𝕷' => 'L', 
    '𝕸' => 'M', '𝕹' => 'N', '𝕺' => 'O', '𝕻' => 'P', '𝕼' => 'Q', '𝕽' => 'R', 
    '𝕾' => 'S', '𝕿' => 'T', '𝖀' => 'U', '𝖁' => 'V', '𝖂' => 'W', '𝖃' => 'X', 
    '𝖄' => 'Y', '𝖅' => 'Z',
    
    # Bold Italic
    '𝒂' => 'a', '𝒃' => 'b', '𝒄' => 'c', '𝒅' => 'd', '𝒆' => 'e', '𝒇' => 'f', 
    '𝒈' => 'g', '𝒉' => 'h', '𝒊' => 'i', '𝒋' => 'j', '𝒌' => 'k', '𝒍' => 'l', 
    '𝒎' => 'm', '𝒏' => 'n', '𝒐' => 'o', '𝒑' => 'p', '𝒒' => 'q', '𝒓' => 'r', 
    '𝒔' => 's', '𝒕' => 't', '𝒖' => 'u', '𝒗' => 'v', '𝒘' => 'w', '𝒙' => 'x', 
    '𝒚' => 'y', '𝒛' => 'z',
    '𝑨' => 'A', '𝑩' => 'B', '𝑪' => 'C', '𝑫' => 'D', '𝑬' => 'E', '𝑭' => 'F', 
    '𝑮' => 'G', '𝑯' => 'H', '𝑰' => 'I', '𝑱' => 'J', '𝑲' => 'K', '𝑳' => 'L', 
    '𝑴' => 'M', '𝑵' => 'N', '𝑶' => 'O', '𝑷' => 'P', '𝑸' => 'Q', '𝑹' => 'R', 
    '𝑺' => 'S', '𝑻' => 'T', '𝑼' => 'U', '𝑽' => 'V', '𝑾' => 'W', '𝑿' => 'X', 
    '𝒀' => 'Y', '𝒁' => 'Z',
    
    # Bold Script
    '𝓪' => 'a', '𝓫' => 'b', '𝓬' => 'c', '𝓭' => 'd', '𝓮' => 'e', '𝓯' => 'f', 
    '𝓰' => 'g', '𝓱' => 'h', '𝓲' => 'i', '𝓳' => 'j', '𝓴' => 'k', '𝓵' => 'l', 
    '𝓶' => 'm', '𝓷' => 'n', '𝓸' => 'o', '𝓹' => 'p', '𝓺' => 'q', '𝓻' => 'r', 
    '𝓼' => 's', '𝓽' => 't', '𝓾' => 'u', '𝓿' => 'v', '𝔀' => 'w', '𝔁' => 'x', 
    '𝔂' => 'y', '𝔃' => 'z',
    '𝓐' => 'A', '𝓑' => 'B', '𝓒' => 'C', '𝓓' => 'D', '𝓔' => 'E', '𝓕' => 'F', 
    '𝓖' => 'G', '𝓗' => 'H', '𝓘' => 'I', '𝓙' => 'J', '𝓚' => 'K', '𝓛' => 'L', 
    '𝓜' => 'M', '𝓝' => 'N', '𝓞' => 'O', '𝓟' => 'P', '𝓠' => 'Q', '𝓡' => 'R', 
    '𝓢' => 'S', '𝓣' => 'T', '𝓤' => 'U', '𝓥' => 'V', '𝓦' => 'W', '𝓧' => 'X', 
    '𝓨' => 'Y', '𝓩' => 'Z',
    
    # Doublestruck
    '𝟘' => '0', '𝟙' => '1', '𝟚' => '2', '𝟛' => '3', '𝟜' => '4', 
    '𝟝' => '5', '𝟞' => '6', '𝟟' => '7', '𝟠' => '8', '𝟡' => '9',
    '𝕒' => 'a', '𝕓' => 'b', '𝕔' => 'c', '𝕕' => 'd', '𝕖' => 'e', '𝕗' => 'f', 
    '𝕘' => 'g', '𝕙' => 'h', '𝕚' => 'i', '𝕛' => 'j', '𝕜' => 'k', '𝕝' => 'l', 
    '𝕞' => 'm', '𝕟' => 'n', '𝕠' => 'o', '𝕡' => 'p', '𝕢' => 'q', '𝕣' => 'r', 
    '𝕤' => 's', '𝕥' => 't', '𝕦' => 'u', '𝕧' => 'v', '𝕨' => 'w', '𝕩' => 'x', 
    '𝕪' => 'y', '𝕫' => 'z',
    '𝔸' => 'A', '𝔹' => 'B', 'ℂ' => 'C', '𝔻' => 'D', '𝔼' => 'E', '𝔽' => 'F', 
    '𝔾' => 'G', 'ℍ' => 'H', '𝕀' => 'I', '𝕁' => 'J', '𝕂' => 'K', '𝕃' => 'L', 
    '𝕄' => 'M', 'ℕ' => 'N', '𝕆' => 'O', 'ℙ' => 'P', 'ℚ' => 'Q', 'ℝ' => 'R', 
    '𝕊' => 'S', '𝕋' => 'T', '𝕌' => 'U', '𝕍' => 'V', '𝕎' => 'W', '𝕏' => 'X', 
    '𝕐' => 'Y', 'ℤ' => 'Z',
    
    # Doublestruck Italic
    'ⅆ' => 'd', 'ⅇ' => 'e', 'ⅈ' => 'i', 'ⅉ' => 'j', 'ⅅ' => 'D',
    
    # Fraktur
    '𝔞' => 'a', '𝔟' => 'b', '𝔠' => 'c', '𝔡' => 'd', '𝔢' => 'e', '𝔣' => 'f', 
    '𝔤' => 'g', '𝔥' => 'h', '𝔦' => 'i', '𝔧' => 'j', '𝔨' => 'k', '𝔩' => 'l', 
    '𝔪' => 'm', '𝔫' => 'n', '𝔬' => 'o', '𝔭' => 'p', '𝔮' => 'q', '𝔯' => 'r', 
    '𝔰' => 's', '𝔱' => 't', '𝔲' => 'u', '𝔳' => 'v', '𝔴' => 'w', '𝔵' => 'x', 
    '𝔶' => 'y', '𝔷' => 'z',
    '𝔄' => 'A', '𝔅' => 'B', '𝔇' => 'D', '𝔈' => 'E', '𝔉' => 'F', '𝔊' => 'G', 
    '𝔍' => 'J', '𝔎' => 'K', '𝔏' => 'L', '𝔐' => 'M', '𝔑' => 'N', '𝔒' => 'O', 
    '𝔓' => 'P', '𝔔' => 'Q', '𝔖' => 'S', '𝔗' => 'T', '𝔘' => 'U', '𝔙' => 'V', 
    '𝔚' => 'W', '𝔛' => 'X', '𝔜' => 'Y',
    
    # Fullwidth
    '　' => ' ',  # Fullwidth space
    '０' => '0', '１' => '1', '２' => '2', '３' => '3', '４' => '4', 
    '５' => '5', '６' => '6', '７' => '7', '８' => '8', '９' => '9',
    'ａ' => 'a', 'ｂ' => 'b', 'ｃ' => 'c', 'ｄ' => 'd', 'ｅ' => 'e', 'ｆ' => 'f', 
    'ｇ' => 'g', 'ｈ' => 'h', 'ｉ' => 'i', 'ｊ' => 'j', 'ｋ' => 'k', 'ｌ' => 'l', 
    'ｍ' => 'm', 'ｎ' => 'n', 'ｏ' => 'o', 'ｐ' => 'p', 'ｑ' => 'q', 'ｒ' => 'r', 
    'ｓ' => 's', 'ｔ' => 't', 'ｕ' => 'u', 'ｖ' => 'v', 'ｗ' => 'w', 'ｘ' => 'x', 
    'ｙ' => 'y', 'ｚ' => 'z',
    'Ａ' => 'A', 'Ｂ' => 'B', 'Ｃ' => 'C', 'Ｄ' => 'D', 'Ｅ' => 'E', 'Ｆ' => 'F', 
    'Ｇ' => 'G', 'Ｈ' => 'H', 'Ｉ' => 'I', 'Ｊ' => 'J', 'Ｋ' => 'K', 'Ｌ' => 'L', 
    'Ｍ' => 'M', 'Ｎ' => 'N', 'Ｏ' => 'O', 'Ｐ' => 'P', 'Ｑ' => 'Q', 'Ｒ' => 'R', 
    'Ｓ' => 'S', 'Ｔ' => 'T', 'Ｕ' => 'U', 'Ｖ' => 'V', 'Ｗ' => 'W', 'Ｘ' => 'X', 
    'Ｙ' => 'Y', 'Ｚ' => 'Z',
    
    # Italic
    '𝑎' => 'a', '𝑏' => 'b', '𝑐' => 'c', '𝑑' => 'd', '𝑒' => 'e', '𝑓' => 'f', 
    '𝑔' => 'g', '𝑖' => 'i', '𝑗' => 'j', '𝑘' => 'k', '𝑙' => 'l', '𝑚' => 'm', 
    '𝑛' => 'n', '𝑜' => 'o', '𝑝' => 'p', '𝑞' => 'q', '𝑟' => 'r', '𝑠' => 's', 
    '𝑡' => 't', '𝑢' => 'u', '𝑣' => 'v', '𝑤' => 'w', '𝑥' => 'x', '𝑦' => 'y', 
    '𝑧' => 'z',
    '𝐴' => 'A', '𝐵' => 'B', '𝐶' => 'C', '𝐷' => 'D', '𝐸' => 'E', '𝐹' => 'F', 
    '𝐺' => 'G', '𝐻' => 'H', '𝐼' => 'I', '𝐽' => 'J', '𝐾' => 'K', '𝐿' => 'L', 
    '𝑀' => 'M', '𝑁' => 'N', '𝑂' => 'O', '𝑃' => 'P', '𝑄' => 'Q', '𝑅' => 'R', 
    '𝑆' => 'S', '𝑇' => 'T', '𝑈' => 'U', '𝑉' => 'V', '𝑊' => 'W', '𝑋' => 'X', 
    '𝑌' => 'Y', '𝑍' => 'Z',
    
    # Monospace
    '𝟶' => '0', '𝟷' => '1', '𝟸' => '2', '𝟹' => '3', '𝟺' => '4', 
    '𝟻' => '5', '𝟼' => '6', '𝟽' => '7', '𝟾' => '8', '𝟿' => '9',
    '𝚊' => 'a', '𝚋' => 'b', '𝚌' => 'c', '𝚍' => 'd', '𝚎' => 'e', '𝚏' => 'f', 
    '𝚐' => 'g', '𝚑' => 'h', '𝚒' => 'i', '𝚓' => 'j', '𝚔' => 'k', '𝚕' => 'l', 
    '𝚖' => 'm', '𝚗' => 'n', '𝚘' => 'o', '𝚙' => 'p', '𝚚' => 'q', '𝚛' => 'r', 
    '𝚜' => 's', '𝚝' => 't', '𝚞' => 'u', '𝚟' => 'v', '𝚠' => 'w', '𝚡' => 'x', 
    '𝚢' => 'y', '𝚣' => 'z',
    '𝙰' => 'A', '𝙱' => 'B', '𝙲' => 'C', '𝙳' => 'D', '𝙴' => 'E', '𝙵' => 'F', 
    '𝙶' => 'G', '𝙷' => 'H', '𝙸' => 'I', '𝙹' => 'J', '𝙺' => 'K', '𝙻' => 'L', 
    '𝙼' => 'M', '𝙽' => 'N', '𝙾' => 'O', '𝙿' => 'P', '𝚀' => 'Q', '𝚁' => 'R', 
    '𝚂' => 'S', '𝚃' => 'T', '𝚄' => 'U', '𝚅' => 'V', '𝚆' => 'W', '𝚇' => 'X', 
    '𝚈' => 'Y', '𝚉' => 'Z',
    
    # Sans-serif
    '𝟢' => '0', '𝟣' => '1', '𝟤' => '2', '𝟥' => '3', '𝟦' => '4', 
    '𝟧' => '5', '𝟨' => '6', '𝟩' => '7', '𝟪' => '8', '𝟫' => '9',
    '𝖺' => 'a', '𝖻' => 'b', '𝖼' => 'c', '𝖽' => 'd', '𝖾' => 'e', '𝖿' => 'f', 
    '𝗀' => 'g', '𝗁' => 'h', '𝗂' => 'i', '𝗃' => 'j', '𝗄' => 'k', '𝗅' => 'l', 
    '𝗆' => 'm', '𝗇' => 'n', '𝗈' => 'o', '𝗉' => 'p', '𝗊' => 'q', '𝗋' => 'r', 
    '𝗌' => 's', '𝗍' => 't', '𝗎' => 'u', '𝗏' => 'v', '𝗐' => 'w', '𝗑' => 'x', 
    '𝗒' => 'y', '𝗓' => 'z',
    '𝖠' => 'A', '𝖡' => 'B', '𝖢' => 'C', '𝖣' => 'D', '𝖤' => 'E', '𝖥' => 'F', 
    '𝖦' => 'G', '𝖧' => 'H', '𝖨' => 'I', '𝖩' => 'J', '𝖪' => 'K', '𝖫' => 'L', 
    '𝖬' => 'M', '𝖭' => 'N', '𝖮' => 'O', '𝖯' => 'P', '𝖰' => 'Q', '𝖱' => 'R', 
    '𝖲' => 'S', '𝖳' => 'T', '𝖴' => 'U', '𝖵' => 'V', '𝖶' => 'W', '𝖷' => 'X', 
    '𝖸' => 'Y', '𝖹' => 'Z',
    
    # Sans-serif Bold
    '𝟬' => '0', '𝟭' => '1', '𝟮' => '2', '𝟯' => '3', '𝟰' => '4', 
    '𝟱' => '5', '𝟲' => '6', '𝟳' => '7', '𝟴' => '8', '𝟵' => '9',
    '𝗮' => 'a', '𝗯' => 'b', '𝗰' => 'c', '𝗱' => 'd', '𝗲' => 'e', '𝗳' => 'f', 
    '𝗴' => 'g', '𝗵' => 'h', '𝗶' => 'i', '𝗷' => 'j', '𝗸' => 'k', '𝗹' => 'l', 
    '𝗺' => 'm', '𝗻' => 'n', '𝗼' => 'o', '𝗽' => 'p', '𝗾' => 'q', '𝗿' => 'r', 
    '𝘀' => 's', '𝘁' => 't', '𝘂' => 'u', '𝘃' => 'v', '𝘄' => 'w', '𝘅' => 'x', 
    '𝘆' => 'y', '𝘇' => 'z',
    '𝗔' => 'A', '𝗕' => 'B', '𝗖' => 'C', '𝗗' => 'D', '𝗘' => 'E', '𝗙' => 'F', 
    '𝗚' => 'G', '𝗛' => 'H', '𝗜' => 'I', '𝗝' => 'J', '𝗞' => 'K', '𝗟' => 'L', 
    '𝗠' => 'M', '𝗡' => 'N', '𝗢' => 'O', '𝗣' => 'P', '𝗤' => 'Q', '𝗥' => 'R', 
    '𝗦' => 'S', '𝗧' => 'T', '𝗨' => 'U', '𝗩' => 'V', '𝗪' => 'W', '𝗫' => 'X', 
    '𝗬' => 'Y', '𝗭' => 'Z',
    
    # Sans-serif Bold Italic
    '𝙖' => 'a', '𝙗' => 'b', '𝙘' => 'c', '𝙙' => 'd', '𝙚' => 'e', '𝙛' => 'f', 
    '𝙜' => 'g', '𝙝' => 'h', '𝙞' => 'i', '𝙟' => 'j', '𝙠' => 'k', '𝙡' => 'l', 
    '𝙢' => 'm', '𝙣' => 'n', '𝙤' => 'o', '𝙥' => 'p', '𝙦' => 'q', '𝙧' => 'r', 
    '𝙨' => 's', '𝙩' => 't', '𝙪' => 'u', '𝙫' => 'v', '𝙬' => 'w', '𝙭' => 'x', 
    '𝙮' => 'y', '𝙯' => 'z',
    '𝘼' => 'A', '𝘽' => 'B', '𝘾' => 'C', '𝘿' => 'D', '𝙀' => 'E', '𝙁' => 'F', 
    '𝙂' => 'G', '𝙃' => 'H', '𝙄' => 'I', '𝙅' => 'J', '𝙆' => 'K', '𝙇' => 'L', 
    '𝙈' => 'M', '𝙉' => 'N', '𝙊' => 'O', '𝙋' => 'P', '𝙌' => 'Q', '𝙍' => 'R', 
    '𝙎' => 'S', '𝙏' => 'T', '𝙐' => 'U', '𝙑' => 'V', '𝙒' => 'W', '𝙓' => 'X', 
    '𝙔' => 'Y', '𝙕' => 'Z',
    
    # Sans-serif Italic
    '𝘢' => 'a', '𝘣' => 'b', '𝘤' => 'c', '𝘥' => 'd', '𝘦' => 'e', '𝘧' => 'f', 
    '𝘨' => 'g', '𝘩' => 'h', '𝘪' => 'i', '𝘫' => 'j', '𝘬' => 'k', '𝘭' => 'l', 
    '𝘮' => 'm', '𝘯' => 'n', '𝘰' => 'o', '𝘱' => 'p', '𝘲' => 'q', '𝘳' => 'r', 
    '𝘴' => 's', '𝘵' => 't', '𝘶' => 'u', '𝘷' => 'v', '𝘸' => 'w', '𝘹' => 'x', 
    '𝘺' => 'y', '𝘻' => 'z',
    '𝘈' => 'A', '𝘉' => 'B', '𝘊' => 'C', '𝘋' => 'D', '𝘌' => 'E', '𝘍' => 'F', 
    '𝘎' => 'G', '𝘏' => 'H', '𝘐' => 'I', '𝘑' => 'J', '𝘒' => 'K', '𝘓' => 'L', 
    '𝘔' => 'M', '𝘕' => 'N', '𝘖' => 'O', '𝘗' => 'P', '𝘘' => 'Q', '𝘙' => 'R', 
    '𝘚' => 'S', '𝘛' => 'T', '𝘜' => 'U', '𝘝' => 'V', '𝘞' => 'W', '𝘟' => 'X', 
    '𝘠' => 'Y', '𝘡' => 'Z',
    
    # Script
    '𝒶' => 'a', '𝒷' => 'b', '𝒸' => 'c', '𝒹' => 'd', 'ℯ' => 'e', '𝒻' => 'f', 
    'ℊ' => 'g', '𝒽' => 'h', '𝒾' => 'i', '𝒿' => 'j', '𝓀' => 'k', 'ℓ' => 'l', 
    '𝓁' => 'l', '𝓂' => 'm', '𝓃' => 'n', 'ℴ' => 'o', '𝓅' => 'p', '𝓆' => 'q', 
    '𝓇' => 'r', '𝓈' => 's', '𝓉' => 't', '𝓊' => 'u', '𝓋' => 'v', '𝓌' => 'w', 
    '𝓍' => 'x', '𝓎' => 'y', '𝓏' => 'z',
    '𝒜' => 'A', 'ℬ' => 'B', '𝒞' => 'C', '𝒟' => 'D', 'ℰ' => 'E', 'ℱ' => 'F', 
    '𝒢' => 'G', 'ℋ' => 'H', 'ℐ' => 'I', '𝒥' => 'J', '𝒦' => 'K', 'ℒ' => 'L', 
    'ℳ' => 'M', '𝒩' => 'N', '𝒪' => 'O', '℘' => 'P', '𝒫' => 'P', '𝒬' => 'Q', 
    'ℛ' => 'R', '𝒮' => 'S', '𝒯' => 'T', '𝒰' => 'U', '𝒱' => 'V', '𝒲' => 'W', 
    '𝒳' => 'X', '𝒴' => 'Y', '𝒵' => 'Z'
;

# Build reverse mapping for multi-character replacements
my %reverse-mapping;
for %lookalikes.kv -> $from, $to {
    # For multi-char replacements, we need to handle them specially
    if $to.chars > 1 {
        %reverse-mapping{$to}.push: $from;
    }
}

# Sort multi-char keys by length (longest first) for proper replacement
my @multi-char-keys = %reverse-mapping.keys.sort({ $^b.chars <=> $^a.chars });

# Clean ASCII text by replacing homoglyphs with ASCII characters
sub clean-ascii(Str $text is copy --> Str) is export {
    # First handle multi-character replacements (longest first)
    for @multi-char-keys -> $ascii {
        for %reverse-mapping{$ascii}.list -> $homoglyph {
            $text ~~ s:g/$homoglyph/$ascii/;
        }
    }
    
    # Then handle single character replacements
    for %lookalikes.kv -> $from, $to {
        next if $to.chars > 1;  # Skip multi-char replacements
        $text ~~ s:g/$from/$to/;
    }
    
    return $text;
}

# Detect homoglyphs in text without modifying it
sub detect-ascii-homoglyphs(Str $text --> Array) is export {
    my @found;
    
    # Check for multi-character homoglyphs first
    for @multi-char-keys -> $ascii {
        for %reverse-mapping{$ascii}.list -> $homoglyph {
            if $text.contains($homoglyph) {
                for $text.indices($homoglyph) -> $pos {
                    @found.push: {
                        char => $homoglyph,
                        ascii => $ascii,
                        position => $pos,
                        length => $homoglyph.chars
                    };
                }
            }
        }
    }
    
    # Check for single character homoglyphs
    for %lookalikes.kv -> $from, $to {
        next if $to.chars > 1;  # Skip multi-char replacements
        if $text.contains($from) {
            for $text.indices($from) -> $pos {
                @found.push: {
                    char => $from,
                    ascii => $to,
                    position => $pos,
                    length => 1
                };
            }
        }
    }
    
    # Sort by position and return as Array
    return @found.sort({ $^a<position> <=> $^b<position> }).Array;
}

# Clean ASCII text and return detailed information
sub clean-ascii-verbose(Str $text is copy --> Hash) is export {
    my $original = $text;
    my @replacements = detect-ascii-homoglyphs($text);
    
    # Apply replacements from end to beginning to maintain positions
    for @replacements.reverse -> $r {
        my $before = $text.substr(0, $r<position>);
        my $after = $text.substr($r<position> + $r<length>);
        $text = $before ~ $r<ascii> ~ $after;
    }
    
    return {
        original => $original,
        cleaned => $text,
        replacements => @replacements,
        changed => $original ne $text
    };
}

# Clean ASCII text more aggressively - removes combining characters from decomposable characters
sub clean-ascii-more(Str $text is copy --> Str) is export {
    # First do the regular homoglyph cleaning
    $text = clean-ascii($text);
    
    # Use NFKD decomposition and filter out combining marks (Unicode category Mn)
    # This removes diacritics from accented characters
    my $nfkd = $text.NFKD;
    $text = $nfkd.list.grep({ $_.uniprop('General_Category') ne 'Mn' }).map(*.chr).join;
    
    return $text;
}

# Clean ASCII text to pure ASCII only - replaces non-ASCII with underscores
sub clean-ascii-pure(Str $text is copy --> Str) is export {
    # First apply clean-ascii-more (homoglyphs + combining mark removal)
    $text = clean-ascii-more($text);
    
    # Then replace any remaining non-ASCII characters with underscore
    my $pure = '';
    for $text.comb -> $char {
        if $char.ord <= 127 {
            $pure ~= $char;
        }
        else {
            $pure ~= '_';
        }
    }
    
    return $pure;
}