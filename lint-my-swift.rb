class LintMySwift < Formula
  desc "LintMySwift CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/aksh1t/homebrew-test/releases/download/lint-my-swift-0.0.10/lint-my-swift.artifactbundle.zip"
  sha256 "4d40bebe142ba9ccbc0160d31f081cb4bd4f37a0dcb80d20af32b3dd0abc758f"
  version "0.0.10"

  def install
    system "unzip", "-o", cached_download
    bin.install "lint-my-swift/bin/lint-my-swift"
  end

  test do
    system "#{bin}/lint-my-swift"
  end
end
