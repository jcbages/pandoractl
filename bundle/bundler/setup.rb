require 'rbconfig'
ruby_engine = RUBY_ENGINE
ruby_version = RbConfig::CONFIG["ruby_version"]
path = File.expand_path('..', __FILE__)
$:.unshift "#{path}/"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/multipart-post-2.1.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/faraday-1.0.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/faraday-1.0.1/spec/external_adapters"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/thor-1.0.1/lib"
