class preternatural < Formula
  desc "preternatural CLI Tool"
  homepage "https://github.com/aksh1t/homebrew-test"
  url "https://github.com/aksh1t/homebrew-test/releases/download/preternatural-0.0.9/preternatural.artifactbundle.zip"
  sha256 "244787790640dcab759f7c03d8007749c7d8033c28b15db630d939989a1618ea"
  version "0.0.9"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
