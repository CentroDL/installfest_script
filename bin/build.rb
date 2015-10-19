#!/usr/bin/env ruby
# Builds installfest script from Manifest files.
# TODO(phlco) allow arguments?
# build = ARGV[0]

def log_json()
end

Dir["manifests/Manifest*"].each do |manifest|
  filename = manifest.gsub(/manifest./i, '')
  File.open("builds/#{filename}", 'w') do |file|
    file << "#!/usr/bin/env bash\n"
    file << "\n"
    file << "COMPILED_AT='#{Time.now.strftime "%a %b %d %H:%M:%S %Z %Y"}'\n"
    File.read(manifest).each_line do |line|
      unless line.start_with?("#") || line.strip == ""
        file_path = (line =~ /^tests\// ? "#{line.chomp}.sh" : "scripts/#{line.chomp}.sh")
        if File.exists?(file_path)
          file << File.read(file_path)
          # TODO(dennis) test this shit
          file << File.read("scripts/utils/report_log.sh").gsub("LOG_INFO", log_json)
        else
          puts "Error in #{manifest}: failed to find path #{file_path}!"
          exit 1
        end
        file << "\n"
      else
        file << "\n\n#{line.gsub('# ->', '').strip}\n\n" if line.start_with?('# ->')
      end
    end
  end
end
