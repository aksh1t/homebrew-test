class lint-my-swift < Formula
  desc "lint-my-swift CLI Tool"
  homepage "https://github.com/aksh1t/homebrew-test"
  url "https://github.com/aksh1t/homebrew-test/releases/download/lint-my-swift-0.0.1/lint-my-swift.artifactbundle.zip"
  sha256 "e354806ac81ea4b6c8dd793291bb68cb83f1cd695144214a700dccfb4f1c9c2c"
  version "lint-my-swift-0.0.1"

  def install
    system "unzip", "-o", cached_download
    bin.install "lint-my-swift/bin/lint-my-swift"
  end

  test do
    system "#{bin}/lint-my-swift"
  end
end
