require "spec_helper"

context "after provisioning finished" do

  describe server(:client1) do
    let(:http_proxy) { "http://" + server(:server1).server.address + ":8080" }
    let(:allowed_url) { "http://www.freebsd.org/" }
    let(:banned_url) { "http://2ch.net" }
    let(:fetch_command) { "curl" }
    let(:fetch_command_opts) { "--silent" }
    let(:env) { "env http_proxy=#{ http_proxy }" }

    describe "HTTP request to allowed URL" do
      it "is successfully made" do
        result = current_server.ssh_exec("#{ env } #{ fetch_command } #{ fetch_command_opts } #{ allowed_url }")
        expect(result).not_to match(/E2Guardian - Access Denied/)
      end
    end

    describe "HTTP request to banned URL" do
      it "is rejected" do
        result = current_server.ssh_exec("#{ env } #{ fetch_command } #{ fetch_command_opts } #{ banned_url }")
        expect(result).to match(/E2Guardian - Access Denied/)
      end
    end
  end

end
