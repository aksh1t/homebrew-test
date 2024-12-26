class preternatural < Formula
  desc "preternatural CLI Tool"
  homepage "https://github.com/aksh1t/homebrew-test"
  url "https://github.com/aksh1t/homebrew-test/releases/download/preternatural-0.0.7/preternatural.artifactbundle.zip"
  sha256 "6237afaac5efba9944c3801e8c390960f97c13ea9ef2c90fa0538127ededee79"
  version "preternatural-0.0.7"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
