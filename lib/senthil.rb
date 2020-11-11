require_relative 'schemard'

require 'pp'

projects  = ['fat_free_crm','Hours','chatwoot','lobsters',
'spree','mastodon','redmine','gitlabhq','huginn','refinerycms',
'rubygems.org','solidus','diaspora','discourse','coderwall-next',
'selfstarter']






def print_schema(project)
	puts project + "\n" + "#"*10
	input_file = '../../' + project + '/db/schema.rb'

unless File.exist? input_file
  puts 'File does not exists'
  return
end

schema = SchemaRD::SchemaParser.new(input_file).parse(with_comment: false)

#pp schema

schema.all_tables.each do |key,value| 
	puts
	puts key 
	value.columns.each do |k|
		puts 'column: '+ k.name + ', type: ' + k.type.to_s

		#puts k.to_json
		
		#puts k.default
		#puts k.name
	end


end

pp schema.relations
puts "\n" + "#"*10
end



projects.each do |project|
begin
  print_schema(project)
rescue NoMethodError
  puts "no method error"
#rescue Errno::ENOENT
#	puts "File not found."
rescue 	RuntimeError
	puts "runtime error"
#rescue Errno::EACCES
#  puts "Insufficient permissions, not allowed to open file."
end

end