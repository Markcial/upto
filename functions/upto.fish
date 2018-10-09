function upto -a where -d "Go up to a certain directory"
    set -l pieces ( pwd | tr "/" "\n")

    if contains -- $where $pieces
        set -l p (contains --index -- $where $pieces)
        set -l dest (printf "%s\n" $pieces[1..$p] | tr "\n" "/")
        cd "$dest"

        return
    end

    return 1
end
