function does_it_works -a folder -a param -a expected
  mock pwd 0 "echo '$folder'"
  mock cd 0 "echo \$args"
  set -l out (upto $param)
  if test "$out" = "$expected"
    return
  end

  return 1
end

test "$TESTNAME up just one level"
    (does_it_works /root/spam/eggs spam /root/spam/) $status -eq 0
end

test "$TESTNAME up two levels"
    (does_it_works /root/spam/eggs root /root/) $status -eq 0
end

test "$TESTNAME up three levels"
    (does_it_works /root/one/two/three/four one /root/one/) $status -eq 0
end

test "$TESTNAME up to the top"
    (does_it_works /root/one/two/three/four root /root/) $status -eq 0
end

test "$TESTNAME folder not found"
    (does_it_works /root/one/two/three/four meh '') $status -eq 0
end

test "$TESTNAME folders with weird chars"
    (does_it_works '/home/weiß/projekten/src/Core' weiß /home/weiß/) $status -eq 0
end

test "$TESTNAME folders with weird chars"
    (does_it_works '/root/boh/Ñç&(abc)/bacon' boh /root/boh/) $status -eq 0
end

test "$TESTNAME folders with spaces go to its parent"
    (does_it_works '/root/boh/a spaced folder/bacon' boh /root/boh/) $status -eq 0
end

test "$TESTNAME folders with spaces go to that folder"
    (does_it_works '/root/boh/a spaced folder/bacon' 'a spaced folder' '/root/boh/a spaced folder/') $status -eq 0
end
