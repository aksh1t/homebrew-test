class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/aksh1t/homebrew-test/releases/download/preternatural-0.0.16/final-artifact.zip"
  sha256 "dd31daf7c2b3c415acf8dcdd03c9dd723f143695abbbdb944acbce0fac7531cd"
  version "0.0.16"

  def install
    # Unzip the main artifact bundle
    system "unzip", "-o", cached_download

    # Install executables and daemons
    [
      ["*-executable.zip", "-executable.zip"],
      ["*-daemon.zip", "-daemon.zip"]
    ].each do |glob_pattern, suffix|
      Dir.glob(glob_pattern).each do |zip_file|
        # Create a temporary directory for each zip
        temp_dir = mktemp
        
        # Unzip the zip file
        system "unzip", "-o", zip_file, "-d", temp_dir

        # Extract tool name from the zip filename
        tool_name = File.basename(zip_file, suffix)

        # Install the binary
        binary_path = "#{temp_dir}/#{tool_name}/bin/#{tool_name}"
        bin.install binary_path => tool_name if File.exist?(binary_path)
      end
    end
  end

  # Define service for the daemon if one exists
  daemon_file = Dir.glob("*-daemon.zip").first
  if daemon_file
    service do
      daemon_name = File.basename(daemon_file, "-daemon.zip")
      run [opt_bin/daemon_name]
      keep_alive true
      working_dir HOMEBREW_PREFIX
    end
  end
end
