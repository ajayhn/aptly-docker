require 'rake'

# release - saucy/saucy-updates/saucy-backports
# url - remote mirror url
task :add_all, [:release, :url] do |t, args|

 %w(main restricted universe multiverse).each do |component|
   puts args
   puts %x(#{Dir.pwd}/add-mirror ubuntu-#{args.release}-#{component} #{args[:url]} #{args.release} #{component})
   puts %x(#{Dir.pwd}/update-mirror ubuntu-#{args.release}-#{component}) if $? == 0
   puts %x(#{Dir.pwd}/publish-mirror ubuntu-#{args.release}-#{component}) if $? == 0
 end

end
