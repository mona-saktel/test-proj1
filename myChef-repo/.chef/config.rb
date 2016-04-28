current_dir = File.dirname(__FILE__)
ENV['CHEF_REPO'] ||= "#{ ENV['HOME'] }/git/chef-repo-code"
ENV['OPSCODE_USER'] ||= "pravin_saktel"
user = ENV['OPSCODE_USER']
node_name                user
log_level                :warn
log_location             STDOUT
client_key               "#{ current_dir }/#{user}.pem"
validation_client_name   "dev-validator"
validation_key           "#{ current_dir }/dev-validator.pem"
chef_server_url          "https://rhelcm1.mychef.com/organizations/dev" 
cache_type               "BasicFile"
cache_options( :path => "#{ current_dir }/checksums" )
syntax_check_cache_path  "#{ current_dir }/syntax_check_cache"
cookbook_path            [ "cookbooks" ]

# EC2 Related information
#
#if ENV['CHEF_REPO'] && File::exists?(File.join(ENV['CHEF_REPO'], ".chef", "chef-vault.rb"))
#  eval(File.read(File.join(ENV['CHEF_REPO'], ".chef", "chef-vault.rb")))
#end
