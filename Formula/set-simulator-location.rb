class SetSimulatorLocation < Formula
  homepage "https://github.com/lyft/set-simulator-location"
  head "https://github.com/lyft/set-simulator-location.git"
  url "https://github.com/lyft/set-simulator-location/releases/download/1.0.0/set-simulator-location.tar.gz"
  sha256 "f06c0ac848e24d19b6d1a7aff6802e94fa8386cd2bc7a2158da5f95d9dca4591"

  def install
    if build.head?
      bin.mkpath
      system "make", "install", "PREFIX=#{ bin }"
    else
      bin.install "set-simulator-location"
    end
  end
end
