{ buildErlang, fetchgit }:

buildErlang {
  name = "zipper";
  version = "0.1";
  src = fetchgit {
    url = "git://github.com/inaka/zipper.git";
    sha256 = "1qvz4bmh307avjsxmhhdf35dd5wzmii0cbf6jyvvlhhkq4y0nmnj";
  };
}