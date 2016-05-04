function upto
    set -l dir (pwd)
    set -l pieces (echo $dir | tr "/" "\n")
    if contains $argv $pieces
       set -l p (contains --index $argv $pieces)
       set -l dest (echo $pieces[1..$p] | tr " " "/")
       cd $dest
       return
    end

    return 1
end
