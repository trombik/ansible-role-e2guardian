require "spec_helper"
require "serverspec"

package = "e2guardian"
service = "e2guardian"
config_dir = "/etc/e2guardian"
user    = "e2guardian"
group   = "e2guardian"
ports   = [ 8080 ]
log_dir = "/var/log/e2guardian"

case os[:family]
when "freebsd"
  user = "nobody"
  group = "nobody"
  config_dir = "/usr/local/etc/e2guardian"
end
config = "#{ config_dir }/e2guardian.conf"

describe package(package) do
  it { should be_installed }
end 

describe file(config) do
  it { should be_file }
  its(:content) { should match Regexp.escape("e2guardian") }
end

describe file(log_dir) do
  it { should exist }
  it { should be_mode 755 }
  it { should be_owned_by user }
  it { should be_grouped_into group }
end

case os[:family]
when "freebsd"
  describe file("/etc/rc.conf.d/e2guardian") do
    it { should be_file }
  end
end

describe service(service) do
  it { should be_running }
  it { should be_enabled }
end

ports.each do |p|
  describe port(p) do
    it { should be_listening }
  end
end
