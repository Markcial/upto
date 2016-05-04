function upto -d "Go up to a certain directory"
    set -l pieces (printf "%s\n" $PWD | tr "/" "\n")
    
    if contains -- $argv $pieces
        if set -l p (contains -- --index $argv $pieces)
            set -l dest (printf "%s\n" $pieces[1..$p] | tr " " "/")
            cd "$dest"
        
            return
        end
    end

    return 1
end
