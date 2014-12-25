{ buildErlang, fetchgit, goldrush }:

buildErlang {
  name = "lager";
  version = "0.1";
  src = fetchgit {
    url = "git://github.com/basho/lager.git";
    sha256 = "09685k5i52ryhihlix7nrvbl4gypp5v8cil3lakqhv69g8hcv4ll";
  };

  erlangDeps = [ goldrush ];
}