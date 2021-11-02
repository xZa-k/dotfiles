function fish_greeting
    command ufetch.sh
    set quotes (cat ~/.config/quotes.txt)
    echo $quotes[(random 1 (count $quotes))]
end
