class preternatural < Formula
  desc "preternatural CLI Tool"
  homepage "https://github.com/aksh1t/homebrew-test"
  url "https://github.com/aksh1t/homebrew-test/releases/download/preternatural-0.0.8/preternatural.artifactbundle.zip"
  sha256 "fb710bb33135da9b56387dfd035fcb31649f34871f3a045c75b5a728a0d2c177"
  version "0.0.8"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
