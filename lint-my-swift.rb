class LintMySwift < Formula
  desc "LintMySwift CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/aksh1t/homebrew-test/releases/download/lint-my-swift-0.0.9/lint-my-swift.artifactbundle.zip"
  sha256 "96567183453143f0d1be98fa443c024bda4bcc52d733eb884cc4244ea87b11da"
  version "0.0.9"

  def install
    system "unzip", "-o", cached_download
    bin.install "lint-my-swift/bin/lint-my-swift"
  end

  test do
    system "#{bin}/lint-my-swift"
  end
end
