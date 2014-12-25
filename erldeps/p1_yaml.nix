{ buildErlang, fetchgit, libyaml }:

buildErlang {
  name = "p1_yaml";
  version = "0.1";
  src = fetchgit {
    url = "git://github.com/processone/p1_yaml.git";
    sha256 = "1ah22hcad4s3rapcjcgpp3mmcgpzl4bj9q465zfjmgv9ca9p6hmv";
  };

  buildInputs = [ libyaml ];
}