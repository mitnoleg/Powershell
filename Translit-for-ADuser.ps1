
############################################################
#
#       Транслитерация текста с помощью PowerShell вариант https://money.yandex.ru/doc.xml?id=525052
#https://ru.wikipedia.org/wiki/Транслитерация_русского_алфавита_латиницей#Международный_стандарт,_рекомендованный_ИКАО
#https://money.yandex.ru/doc.xml?id=525052
############################################################
function Translit ([string]$inString)
{
    #Создаём хеш-таблицу соответствия символов
    $Translit = @{
    [char]'а' = "a"
    [char]'А' = "A"
    [char]'б' = "b"
    [char]'Б' = "B"
    [char]'в' = "v"
    [char]'В' = "V"
    [char]'г' = "g"
    [char]'Г' = "G"
    [char]'д' = "d"
    [char]'Д' = "D"
    [char]'е' = "e"
    [char]'Е' = "E"
    [char]'ё' = "e"
    [char]'Ё' = "E"
    [char]'ж' = "zh"
    [char]'Ж' = "Zh"
    [char]'з' = "z"
    [char]'З' = "Z"
    [char]'и' = "i"
    [char]'И' = "I"
    [char]'й' = "i"
    [char]'Й' = "I"
    [char]'к' = "k"
    [char]'К' = "K"
    [char]'л' = "l"
    [char]'Л' = "L"
    [char]'м' = "m"
    [char]'М' = "M"
    [char]'н' = "n"
    [char]'Н' = "N"
    [char]'о' = "o"
    [char]'О' = "O"
    [char]'п' = "p"
    [char]'П' = "P"
    [char]'р' = "r"
    [char]'Р' = "R"
    [char]'с' = "s"
    [char]'С' = "S"
    [char]'т' = "t"
    [char]'Т' = "T"
    [char]'у' = "u"
    [char]'У' = "U"
    [char]'ф' = "f"
    [char]'Ф' = "F"
    [char]'х' = "kh"
    [char]'Х' = "Kh"
    [char]'ц' = "ts"
    [char]'Ц' = "Ts"
    [char]'ч' = "ch"
    [char]'Ч' = "Ch"
    [char]'ш' = "sh"
    [char]'Ш' = "Sh"
    [char]'щ' = "sch"
    [char]'Щ' = "Sch"
    [char]'ъ' = ""
    [char]'Ъ' = ""
    [char]'ы' = "y"
    [char]'Ы' = "Y"
    [char]'ь' = ""
    [char]'Ь' = ""
    [char]'э' = "e"
    [char]'Э' = "E"
    [char]'ю' = "yu"
    [char]'Ю' = "Yu"
    [char]'я' = "ya"
    [char]'Я' = "Ya"
    }
    [string]$inString = Read-Host "Введите текст"
    $TranslitText =""
    foreach ($CHR in $inCHR = $inString.ToCharArray())
        {
        if ($Translit[$CHR] -cne $Null) 
            { $TranslitText += $Translit[$CHR] }
        else
            { $TranslitText += $CHR }
        }
    return $TranslitText
}
 
Translit

Start-Sleep 60