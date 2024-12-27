class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/aksh1t/homebrew-test/releases/download/preternatural-0.0.14/preternatural.artifactbundle.zip"
  sha256 "60d166ec94e7ebc430d061a85a59347cebca319ea1ca24d8e85ed52c28afe244"
  version "0.0.14"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
