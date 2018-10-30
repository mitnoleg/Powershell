
############################################################
#
#       �������������� ������ � ������� PowerShell ������� https://money.yandex.ru/doc.xml?id=525052
#https://ru.wikipedia.org/wiki/��������������_��������_��������_���������#�������������_��������,_���������������_����
#https://money.yandex.ru/doc.xml?id=525052
############################################################
function Translit ([string]$inString)
{
    #������ ���-������� ������������ ��������
    $Translit = @{
    [char]'�' = "a"
    [char]'�' = "A"
    [char]'�' = "b"
    [char]'�' = "B"
    [char]'�' = "v"
    [char]'�' = "V"
    [char]'�' = "g"
    [char]'�' = "G"
    [char]'�' = "d"
    [char]'�' = "D"
    [char]'�' = "e"
    [char]'�' = "E"
    [char]'�' = "e"
    [char]'�' = "E"
    [char]'�' = "zh"
    [char]'�' = "Zh"
    [char]'�' = "z"
    [char]'�' = "Z"
    [char]'�' = "i"
    [char]'�' = "I"
    [char]'�' = "i"
    [char]'�' = "I"
    [char]'�' = "k"
    [char]'�' = "K"
    [char]'�' = "l"
    [char]'�' = "L"
    [char]'�' = "m"
    [char]'�' = "M"
    [char]'�' = "n"
    [char]'�' = "N"
    [char]'�' = "o"
    [char]'�' = "O"
    [char]'�' = "p"
    [char]'�' = "P"
    [char]'�' = "r"
    [char]'�' = "R"
    [char]'�' = "s"
    [char]'�' = "S"
    [char]'�' = "t"
    [char]'�' = "T"
    [char]'�' = "u"
    [char]'�' = "U"
    [char]'�' = "f"
    [char]'�' = "F"
    [char]'�' = "kh"
    [char]'�' = "Kh"
    [char]'�' = "ts"
    [char]'�' = "Ts"
    [char]'�' = "ch"
    [char]'�' = "Ch"
    [char]'�' = "sh"
    [char]'�' = "Sh"
    [char]'�' = "sch"
    [char]'�' = "Sch"
    [char]'�' = ""
    [char]'�' = ""
    [char]'�' = "y"
    [char]'�' = "Y"
    [char]'�' = ""
    [char]'�' = ""
    [char]'�' = "e"
    [char]'�' = "E"
    [char]'�' = "yu"
    [char]'�' = "Yu"
    [char]'�' = "ya"
    [char]'�' = "Ya"
    }
    [string]$inString = Read-Host "������� �����"
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