class Swiftlint < Formula
  desc "Experimental tool to enforce Swift style and conventions"
  homepage "https://github.com/lyft/SwiftLint"
  url "https://github.com/lyft/SwiftLint.git", :tag => "2.0.4", :revision => "9fba4ec4b08ceef933d5eed20e51d7087ae507d9"
  head "https://github.com/lyft/SwiftLint.git", :branch => "swift-2.0-update-rules"

  depends_on :xcode => ["7.0", :build]

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}", "TEMPORARY_FOLDER=#{buildpath}/SwiftLint.dst"
  end

  test do
    (testpath/"Test.swift").write "import Foundation\n"
    system "#{bin}/swiftlint"
  end
end
