class SetSimulatorLocation < Formula
  homepage "https://github.com/lyft/set-simulator-location"
  head "https://github.com/lyft/set-simulator-location.git"
  url "https://github.com/lyft/set-simulator-location/releases/download/1.3.1/set-simulator-location.tar.gz"
  sha256 "827d690d3217b46c83b78d313797bcee79a212a8e76670cf94702ee91b9d2a75"

  def install
    if build.head?
      bin.mkpath
      system "make", "install", "PREFIX=#{ bin }"
    else
      bin.install "set-simulator-location"
    end
  end
end
