class lint-my-swift < Formula
  desc "lint-my-swift CLI Tool"
  homepage "https://github.com/aksh1t/homebrew-test"
  url "https://github.com/aksh1t/homebrew-test/releases/download/lint-my-swift-0.0.4/lint-my-swift.artifactbundle.zip"
  sha256 "78bcc5c186d9d372155db5955c0eea4cb591e131d221004ad50b0b6ec623eb23"
  version "lint-my-swift-0.0.4"

  def install
    system "unzip", "-o", cached_download
    bin.install "lint-my-swift/bin/lint-my-swift"
  end

  test do
    system "#{bin}/lint-my-swift"
  end
end
