class Swiftlint < Formula
  desc "Experimental tool to enforce Swift style and conventions"
  homepage "https://github.com/lyft/SwiftLint"
  url "https://github.com/lyft/SwiftLint.git", :tag => "2.0.5", :revision => "1540f765b8db9eecd0823beff83908ef904d6fc0"
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
