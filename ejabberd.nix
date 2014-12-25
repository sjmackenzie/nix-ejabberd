{ buildErlang, fetchgit, pam, zlib, openssl, expat, libyaml
, p1_utils, cache_tab, stringprep, p1_xml, p1_tls, p1_stun, esip, p1_yaml, xmlrpc, jiffy, sync, erlang-katana
, eper, lager, getopt, meck, ibrowse, aleppo, zipper, erlang-github, elvis, apns, appmon
}:

buildErlang rec {
  name = "chaatz-ejabberd";
  version = "1.2.2";

  src = fetchgit {
    url = "git://github.com/processone/ejabberd.git";
    rev = "173d9761ca78a5460689cf0000ce65ade4017a58";
    sha256 = "1v5qfr4430vsf6ay8s4a6rpxr9i13prffj6f4pgvy8l6bwps9qs2";
  };

  buildInputs = [ pam zlib openssl expat libyaml ];
  erlangDeps = [ p1_utils cache_tab stringprep p1_xml p1_tls p1_stun esip p1_yaml xmlrpc jiffy sync erlang-katana eper lager getopt meck ibrowse aleppo zipper erlang-github elvis apns appmon ];

  postBuild = ''
    rebar generate
  '';

  postInstall = ''
    cp -a rel/ejabberd "$out"
  '';
}
