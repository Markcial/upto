function setup
  mkdir -p /tmp/foo/bar/eggs/spam
  cd /tmp/foo/bar/eggs/spam
end

test "$TESTNAME up just one level"
    (mock cd 0 "echo \$args"; upto eggs) = "/tmp/foo/bar/eggs"
end

test "$TESTNAME up two levels"
    (mock cd 0 "echo \$args"; upto bar) = "/tmp/foo/bar"
end

test "$TESTNAME up three levels"
    (mock cd 0 "echo \$args"; upto foo) = "/tmp/foo"
end

test "$TESTNAME up to the top"
    (mock cd 0 "echo \$args"; upto tmp) = "/tmp"
end

test "$TESTNAME folder not found"
    (mock cd 0 "echo \$args"; upto bacon) $status -eq 1
end

function teardown
  rm -rf /tmp/foo
end
