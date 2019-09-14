{ stdenv
, fetchPypi
, buildPythonPackage
, click
}:

buildPythonPackage rec {
  pname = "runlike";
  version = "0.6.2";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1qfkj63q4g153z4lkn5371z4mclcr8ahwc7py5gvplxdrl0fcmys";
  };

  propagatedBuildInputs = [ click ];

  meta = with stdenv.lib; {
    description = "Given an existing docker container, prints the command line necessary to run a copy of it";
    homepage = https://github.com/lavie/runlike/;
    license = licenses.bsd;
    platforms = platforms.unix;
    maintainers = with maintainers; [ c0deaddict ];
  };
}
