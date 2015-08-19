class Swiftlint < Formula
  desc "Experimental tool to enforce Swift style and conventions"
  homepage "https://github.com/lyft/SwiftLint"
  url "https://github.com/lyft/SwiftLint.git", :tag => "1.1.4", :revision => "4cc077b53c360e3dd909e723a25257db7c3e8b93"
  head "https://github.com/lyft/SwiftLint.git", :branch => "update-rules"

  depends_on :xcode => ["6.3", :build]

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}", "TEMPORARY_FOLDER=#{buildpath}/SwiftLint.dst"
  end

  test do
    (testpath/"Test.swift").write "import Foundation\n"
    system "#{bin}/swiftlint"
  end
end
