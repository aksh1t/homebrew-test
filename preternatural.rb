class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/aksh1t/homebrew-test/releases/download/preternatural-0.0.13/preternatural.artifactbundle.zip"
  sha256 "db0a896b055da8bd8276abc82e0fa4d780ae3ea08593b213594260718554cf0d"
  version "0.0.13"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
