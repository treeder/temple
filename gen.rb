require 'erb'
require 'ostruct'

def erb(template, vars)
  ERB.new(template).result(OpenStruct.new(vars).instance_eval { binding })
end

# puts "args:"
# p ARGV
# puts "envs"
# p ENV

# convert ENV to map with lowercases includes
vars = {}
ENV.each_pair do |k,v|
    vars[k] = v
    vars[k.downcase] = v
end

tmpl = File.read(ARGV[0])
result = erb(tmpl, vars)
File.write(ARGV[1], result)
