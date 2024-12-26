class lint-my-swift < Formula
  desc "lint-my-swift CLI Tool"
  homepage "https://github.com/aksh1t/homebrew-test"
  url "https://github.com/aksh1t/homebrew-test/releases/download/lint-my-swift-0.0.3/lint-my-swift.artifactbundle.zip"
  sha256 "731ca66035fe30062a4a3fdf6a385cb7b9f8c3a4e67d92128e32a0ad987af2c5"
  version "lint-my-swift-0.0.3"

  def install
    system "unzip", "-o", cached_download
    bin.install "lint-my-swift/bin/lint-my-swift"
  end

  test do
    system "#{bin}/lint-my-swift"
  end
end
