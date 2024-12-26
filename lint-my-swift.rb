class lint-my-swift < Formula
  desc "lint-my-swift CLI Tool"
  homepage "https://github.com/aksh1t/homebrew-test"
  url "https://github.com/aksh1t/homebrew-test/releases/download/lint-my-swift-0.0.5/lint-my-swift.artifactbundle.zip"
  sha256 "d286e7ba7fa4dbd2df297dd8120dc77303e14114eea4e445b598d433d9fc88d2"
  version "lint-my-swift-0.0.5"

  def install
    system "unzip", "-o", cached_download
    bin.install "lint-my-swift/bin/lint-my-swift"
  end

  test do
    system "#{bin}/lint-my-swift"
  end
end
