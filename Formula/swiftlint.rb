class Swiftlint < Formula
  desc "Experimental tool to enforce Swift style and conventions"
  homepage "https://github.com/lyft/SwiftLint"
  url "https://github.com/lyft/SwiftLint.git", :tag => "2.0.8", :revision => "9730331c65095b5c0f3e9ecca41b7373562cf8da"
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
