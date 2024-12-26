class preternatural < Formula
  desc "preternatural CLI Tool"
  homepage "https://github.com/aksh1t/homebrew-test"
  url "https://github.com/aksh1t/homebrew-test/releases/download/preternatural-0.0.5/preternatural.artifactbundle.zip"
  sha256 "d08312ff8aa4272e6fe7d5f26381c4a154c8a321421d74555fb5f9cadbd750d3"
  version "preternatural-0.0.5"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
