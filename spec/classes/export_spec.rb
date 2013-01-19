require "spec_helper"

describe "java::export", :type => :class do
    
    context "Ubuntu" do
        
        let(:facts)  { { :operatingsystem => "Ubuntu", :kernel => "Linux", :architecture => "amd64",  } }
        
        context "OpenJDK 1.6 export, default, jdk, jre" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :export_path=> true, :set_as_default => true, :install_jdk => true, :install_jre => true, } }
            it {
                #should contain_file_line("jdk_etc_environment_jave_home").with( "path" => "/etc/environment", "line" => "JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/" )
            }
        end
        
    end
    
end
