require "spec_helper"
 
describe "java::export", :type => :class do
    
    context "Ubuntu" do
        
        let(:facts)  { { :operatingsystem => "Ubuntu", :kernel => "Linux", :architecture => "amd64",  } }
        
        context "OpenJDK 1.6 export, default, jdk, jre" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :export_path=> true, :set_as_default => true, :install_jdk => true, :install_jre => true, } }
            it {
                should contain_file_line("jdk_etc_environment_java_home").with( "path" => "/etc/environment", "line" => "JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/" )
                should contain_file_line("jdk_etc_environment_jre_home").with(  "path" => "/etc/environment", "line" => "JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre/" )
                should contain_file_line("jre_etc_environment_jre_home").with(  "path" => "/etc/environment", "line" => "JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre/" )
            }
        end
        
        context "OpenJDK 1.7 export, default, jdk, jre" do
            let(:params) { { :vendor => "openjdk", :version => "1.7", :export_path=> true, :set_as_default => true, :install_jdk => true, :install_jre => true, } }
            it {
                should contain_file_line("jdk_etc_environment_java_home").with( "path" => "/etc/environment", "line" => "JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/" )
                should contain_file_line("jdk_etc_environment_jre_home").with(  "path" => "/etc/environment", "line" => "JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre/" )
                should contain_file_line("jre_etc_environment_jre_home").with(  "path" => "/etc/environment", "line" => "JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre/" )
            }
        end
        
    end
    
end