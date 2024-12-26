class preternatural < Formula
  desc "preternatural CLI Tool"
  homepage "https://github.com/aksh1t/homebrew-test"
  url "https://github.com/aksh1t/homebrew-test/releases/download/preternatural-0.0.3/preternatural.artifactbundle.zip"
  sha256 "cd1942f357006dc843c36e3662812bf92315f43f7d0630de277c74c4e6c379f6"
  version "preternatural-0.0.3"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
