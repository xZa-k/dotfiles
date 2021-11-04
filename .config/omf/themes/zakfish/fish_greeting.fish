function fish_greeting
    command pfetch
    set quotes (cat ~/.config/omf/themes/zakfish/quotes.txt)
    echo $quotes[(random 1 (count $quotes))]
end
