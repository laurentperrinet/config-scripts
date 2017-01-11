#!ruby

# Requirements:
#   brew install trash

casks_path = '/usr/local/Caskroom'

if `brew list | grep trash`.empty?
  puts 'Please make "brew install trash" before'
  exit!
end

Dir['/opt/homebrew-cask/Caskroom/*'].each do |program|
  versions = Dir["#{program}/*"].map{|version| [File.ctime(version), version] }
  next if versions.size == 1
  versions.sort! {|a,b| a[0]<=>b[0]}
  puts "#{versions.pop[1]}"
  versions.reverse.each do |_, version|
    `trash #{version}`
    puts "#{version} trashed"
  end
end
