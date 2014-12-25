{ pkgs ? import <nixpkgs> {} }:

let
  callPackage = pkgs.lib.callPackageWith (pkgs // self);

  self = rec {
    buildErlang = callPackage ./build-support/build-erlang.nix {};

    ejabberd = callPackage ./ejabberd.nix {};

    # dependencies for ejabberd
    p1_utils = callPackage ./erldeps/p1_utils.nix {};
    cache_tab = callPackage ./erldeps/cache_tab.nix {};
    stringprep = callPackage ./erldeps/stringprep.nix {};
    p1_xml = callPackage ./erldeps/p1_xml.nix {};
    p1_tls = callPackage ./erldeps/p1_tls.nix {};
    p1_stun = callPackage ./erldeps/p1_stun.nix {};
    esip = callPackage ./erldeps/esip.nix {};
    p1_yaml = callPackage ./erldeps/p1_yaml.nix {};
    xmlrpc = callPackage ./erldeps/xmlrpc.nix {};
    jiffy = callPackage ./erldeps/jiffy.nix {};
    sync = callPackage ./erldeps/sync.nix {};
    erlang-katana = callPackage ./erldeps/erlang-katana.nix {};
    eper = callPackage ./erldeps/eper.nix {};

    goldrush = callPackage ./erldeps/goldrush.nix {};
    lager = callPackage ./erldeps/lager.nix {};
    getopt = callPackage ./erldeps/getopt.nix {};
    meck = callPackage ./erldeps/meck.nix {};
    ibrowse = callPackage ./erldeps/ibrowse.nix {};
    aleppo = callPackage ./erldeps/aleppo.nix {};
    zipper = callPackage ./erldeps/zipper.nix {};
    erlang-github = callPackage ./erldeps/erlang-github.nix {};

    elvis = callPackage ./erldeps/elvis.nix {};
    apns = callPackage ./erldeps/apns.nix {};
    appmon = callPackage ./erldeps/appmon.nix {};
  };
in self
