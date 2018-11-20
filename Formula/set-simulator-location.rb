class SetSimulatorLocation < Formula
  homepage "https://github.com/lyft/set-simulator-location"
  head "https://github.com/lyft/set-simulator-location.git"
  url "https://github.com/lyft/set-simulator-location/releases/download/1.4.0/set-simulator-location.tar.gz"
  sha256 "0339700371c0c6dad44a0e606b9bb6a3237126168410f5b716fcc53519d0c5c8"

  def install
    if build.head?
      bin.mkpath
      system "make", "install", "PREFIX=#{ bin }"
    else
      bin.install "set-simulator-location"
    end
  end
end
