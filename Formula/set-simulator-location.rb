class SetSimulatorLocation < Formula
  homepage "https://github.com/lyft/set-simulator-location"
  head "https://github.com/lyft/set-simulator-location.git"
  url "https://github.com/lyft/set-simulator-location/releases/download/1.3.0/set-simulator-location.tar.gz"
  sha256 "fdd61a2be59c8aa2a1688d68bb56185d69edbc8f523f8257fe009abc0ef722d2"

  def install
    if build.head?
      bin.mkpath
      system "make", "install", "PREFIX=#{ bin }"
    else
      bin.install "set-simulator-location"
    end
  end
end
