class SetSimulatorLocation < Formula
  homepage "https://github.com/lyft/set-simulator-location"
  head "https://github.com/lyft/set-simulator-location.git"
  url "https://github.com/lyft/set-simulator-location/releases/download/1.2.0/set-simulator-location.tar.gz"
  sha256 "ccfba9168f2d9b3ebdf36fca98780f9aa70cd758d77b80f5e7e37fc216aa2f9f"

  def install
    if build.head?
      bin.mkpath
      system "make", "install", "PREFIX=#{ bin }"
    else
      bin.install "set-simulator-location"
    end
  end
end
