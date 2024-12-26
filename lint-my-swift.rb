class lint-my-swift < Formula
  desc "lint-my-swift CLI Tool"
  homepage "https://github.com/aksh1t/homebrew-test"
  url "https://github.com/aksh1t/homebrew-test/releases/download/lint-my-swift-0.0.2/lint-my-swift.artifactbundle.zip"
  sha256 "ed9b18c05a6bc6a70c8e5e2ba7001a59dde922b14866fe627b8f582afe11c052"
  version "lint-my-swift-0.0.2"

  def install
    system "unzip", "-o", cached_download
    bin.install "lint-my-swift/bin/lint-my-swift"
  end

  test do
    system "#{bin}/lint-my-swift"
  end
end
