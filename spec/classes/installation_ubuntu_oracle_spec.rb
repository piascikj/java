require "spec_helper"

describe "java::installation", :type => :class do
    
    context "Ubuntu" do
        
        let(:facts)  { { :operatingsystem => "Ubuntu", :kernel => "Linux", } }
        
        context "Oracle Java 1.6" do
            let(:params) { { :vendor => "oracle", :version => "1.6", } }
            it {
                should contain_exec("oracle_license_agreement").with( "command" => "echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections" )
                should contain_exec("oracle_license_view").with( "command" => "echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections" )
                should contain_package("oracle-java6-installer").with( "ensure" => "latest" )
            }
        end
        
        context "Oracle Java 1.7" do
            let(:params) { { :vendor => "oracle", :version => "1.7", } }
            it {
                should contain_exec("oracle_license_agreement").with( "command" => "echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections" )
                should contain_exec("oracle_license_view").with( "command" => "echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections" )
                should contain_package("oracle-java7-installer").with( "ensure" => "latest" )
            }
        end
        
    end

end