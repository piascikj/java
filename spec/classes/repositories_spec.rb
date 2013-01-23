require "spec_helper"
 
describe "java::repositories", :type => :class do
    
    context "Debian-Family" do
        
        let(:facts)  { { :osfamily => "Debian", :kernel => "Linux", } }
        
        context "OpenJDK" do
            let(:params) { { :vendor => "openjdk", } }
            it { should contain_exec("general_apt_update").with("user" => "root", "command" => "apt-get update") }
        end
        
        context "Oracle" do
            let(:params) { { :vendor => "oracle", } }
            it {
                should contain_package("python-software-properties").with("ensure" => "latest")
                should contain_exec("oracle_installer").with("user" => "root", "command" => "add-apt-repository ppa:webupd8team/java")
                should contain_exec("oracle_installer_apt_update").with("user" => "root", "command" => "apt-get update")
            }
        end
        
        context "GNU" do
            let(:params) { { :vendor => "gnu", } }
        end
        
        context "IBM" do
            let(:params) { { :vendor => "ibm", } }
        end
        
    end

end