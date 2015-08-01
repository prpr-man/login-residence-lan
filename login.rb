#!/usr/bin/env ruby

require "yaml"

begin
  path = File.expand_path(File.dirname(__FILE__))
  SETTINGS = YAML::load(open(path+"/userinfo.conf"))
rescue
  puts "Config file load failed."
  exit
end

ID = SETTINGS["id"]
PASS = SETTINGS["password"]

system("curl --data-urlencode 'name=#{ID}' --data-urlencode 'pass=#{PASS}' https://webauth03.cc.tsukuba.ac.jp:8443/cgi-bin/adeflogin.cgi >/dev/null 2>&1")
