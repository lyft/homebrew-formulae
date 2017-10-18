class Xcodegen < Formula
  desc "Tool that generates your Xcode project from a project spec"
  homepage "https://github.com/Lyft/XcodeGen"
  url "https://github.com/lyft/XcodeGen/releases/download/1.2.4/XcodeGen.tar.gz"
  sha256 "fca20d18d420f8aebb476dec0d2631d2f6e96d2b937512505c81a6771e5310f1"
  head "https://github.com/lyft/XcodeGen.git", :branch => "develop"

  depends_on :xcode

  def install
    if build.head?
      system "make", "install", "PREFIX=#{prefix}"
    else
      bin.install "XcodeGen"
    end
  end

  test do
    (testpath/"xcodegen.yml").write <<-EOS.undent
      name: GeneratedProject
      targets:
        TestProject:
          type: application
          platform: iOS
          sources: TestProject
          settings:
            PRODUCT_BUNDLE_IDENTIFIER: com.test
            PRODUCT_NAME: TestProject
    EOS
    Dir.mkdir(File.join(testpath, "TestProject"))
    system("#{bin}/XcodeGen --spec #{File.join(testpath, "xcodegen.yml")}")
    system("xcodebuild --project #{File.join(testpath, "GeneratedProject.xcodeproj")}")
  end
end
