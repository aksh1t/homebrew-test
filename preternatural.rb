class preternatural < Formula
  desc "preternatural CLI Tool"
  homepage "https://github.com/aksh1t/homebrew-test"
  url "https://github.com/aksh1t/homebrew-test/releases/download/preternatural-0.0.4/preternatural.artifactbundle.zip"
  sha256 "6aa81f0cd8bfe84bcc46b9e2553282f1674acd8e14b4da046c082043b1e4eadb"
  version "preternatural-0.0.4"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
