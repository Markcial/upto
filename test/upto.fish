function does_it_works -a folder -a param -a expected -a retcode
  mock pwd 0 "echo '$folder'"
  mock cd 0 "echo \$args"
  set -l out (upto $param)
  if test "$out" = "$expected" -a $retcode -eq $status
    return 0
  end
  return 1
end

test "$TESTNAME up just one level"
    (does_it_works /root/spam/eggs spam /root/spam 0) $status -eq 0
end

test "$TESTNAME up two levels"
    (does_it_works /root/spam/eggs root /root 0) $status -eq 0
end

test "$TESTNAME up three levels"
    (does_it_works /root/one/two/three/four one /root/one 0) $status -eq 0
end

test "$TESTNAME up to the top"
    (does_it_works /root/one/two/three/four root /root 0) $status -eq 0
end

test "$TESTNAME folder not found"
    (does_it_works /root/one/two/three/four meh '' 1) $status -eq 0
end

test "$TESTNAME folders with weird chars"
    (does_it_works '/root/boh/Ñç&(abc)/bacon' boh /root/boh 0) $status -eq 0
end

test "$TESTNAME folders with spaces"
    (does_it_works '/root/boh/a spaced folder/bacon' boh /root/boh 0) $status -eq 0
end
