class ENG2124Preternatural < Formula
  desc "ENG2124Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/aksh1t/homebrew-test/releases/download/ENG-2124-preternatural-0.0.1/final-artifact.zip"
  sha256 "72faa551a02b79ff16502af3bd06682de1e83285733759458966959f5b64286e"
  version "0.0.1"

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

  service do
    # Find and configure all daemon zips
    daemons = Dir.glob("*-daemon.zip").map do |daemon_zip|
      # Create a temporary directory for each daemon zip
      temp_dir = mktemp
      
      # Unzip the daemon zip
      system "unzip", "-o", daemon_zip, "-d", temp_dir

      # Extract tool name from the zip filename (before -daemon.zip)
      tool_name = File.basename(daemon_zip, "-daemon.zip")

      # Path to the daemon executable
      daemon_path = "#{temp_dir}/#{tool_name}/bin/#{tool_name}"

      # Return daemon configuration if executable exists
      if File.exist?(daemon_path)
        {
          run: [opt_bin/tool_name],
          keep_alive: true,
          run_at_load: true
        }
      end
    end.compact

    # If multiple daemons exist, return an array
    daemons.size > 1 ? daemons : daemons.first
  end
end