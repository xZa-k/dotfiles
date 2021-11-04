function fish_greeting
    command ~/.config/omf/themes/zakfish/pfetch.sh
    set quotes (cat ~/.config/omf/themes/zakfish/quotes.txt)
    echo $quotes[(random 1 (count $quotes))]
end
