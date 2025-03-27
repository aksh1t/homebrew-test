class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/aksh1t/homebrew-test/releases/download/preternatural-0.0.16/final-artifact.zip"
  sha256 "dd31daf7c2b3c415acf8dcdd03c9dd723f143695abbbdb944acbce0fac7531cd"
  version "0.0.16"

  def install
    # Create a temporary directory for the main artifact
    mktemp do |temp_dir|
      # Unzip the main artifact bundle into the temp directory
      system "unzip", "-o", cached_download, "-d", temp_dir
      
      # Move to the temporary directory where files were extracted
      Dir.chdir(temp_dir) do
        # Install executables and daemons
        [
          ["*-executable.zip", "-executable.zip"],
          ["*-daemon.zip", "-daemon.zip"]
        ].each do |glob_pattern, suffix|
          Dir.glob(glob_pattern).each do |zip_file|
            # Create a nested temporary directory for each inner zip
            mktemp do |inner_temp_dir|
              # Unzip the zip file
              system "unzip", "-o", File.join(temp_dir, zip_file), "-d", inner_temp_dir

              # Extract tool name from the zip filename
              tool_name = File.basename(zip_file, suffix)

              # Install the binary
              binary_path = "#{inner_temp_dir}/#{tool_name}/bin/#{tool_name}"
              bin.install binary_path => tool_name if File.exist?(binary_path)
            end
          end
        end
      end
    end
  end
end
