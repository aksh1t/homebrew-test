class preternatural < Formula
  desc "preternatural CLI Tool"
  homepage "https://github.com/aksh1t/homebrew-test"
  url "https://github.com/aksh1t/homebrew-test/releases/download/preternatural-0.0.6/preternatural.artifactbundle.zip"
  sha256 "445d48f768d783760efe52b2f2f629f6d503f43d531729954b1f41b3a36dd255"
  version "preternatural-0.0.6"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
