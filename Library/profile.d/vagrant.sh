#vagrant shortcuts
if which vagrant >/dev/null 2>&1 ; then
  alias vup='vagrant up';
  alias vsu='vagrant suspend';
  alias vss='vagrant ssh';
fi
