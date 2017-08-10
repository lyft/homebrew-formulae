class SetSimulatorLocation < Formula
  homepage "https://github.com/lyft/set-simulator-location"
  head "https://github.com/lyft/set-simulator-location.git"
  url "https://github.com/lyft/set-simulator-location/releases/download/1.1.0/set-simulator-location.tar.gz"
  sha256 "6fe544b85eec698674fafbdb9c6d9845f85ec5e072af59a4da1d1ef022904e87"

  def install
    if build.head?
      bin.mkpath
      system "make", "install", "PREFIX=#{ bin }"
    else
      bin.install "set-simulator-location"
    end
  end
end
