class lint-my-swift < Formula
  desc "lint-my-swift CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url
  sha256
  version

  def install
    system "unzip", "-o", cached_download
    bin.install "lint-my-swift/bin/lint-my-swift"
  end

  test do
    system "#{bin}/lint-my-swift"
  end
end
