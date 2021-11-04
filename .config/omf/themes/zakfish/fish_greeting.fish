function fish_greeting
    command ./pfetch.sh
    set quotes (cat ./quotes.txt)
    echo $quotes[(random 1 (count $quotes))]
end
