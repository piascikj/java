require "spec_helper"

describe "java::installation", :type => :class do
    
    context "Debian-Family" do
        
        let(:facts)  { { :osfamily => "Debian", :kernel => "Linux", } }
        
        context "OpenJDK 1.6, jdk, jre, sources, javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :install_jdk => true, :install_jre => true, :install_sources => true, :install_javadoc => true, } }
            it { should contain_package("openjdk-6-jdk").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-jre").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-source").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.7, jdk, jre, sources, javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.7", :install_jdk => true, :install_jre => true, :install_sources => true, :install_javadoc => true, } }
            it { should contain_package("openjdk-7-jdk").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-jre").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-source").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.6, jdk, jre, sources, no javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :install_jdk => true, :install_jre => true, :install_sources => true, :install_javadoc => false, } }
            it { should contain_package("openjdk-6-jdk").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-jre").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-source").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.7, jdk, jre, sources, no javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.7", :install_jdk => true, :install_jre => true, :install_sources => true, :install_javadoc => false, } }
            it { should contain_package("openjdk-7-jdk").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-jre").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-source").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.6, jdk, jre, no sources, javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :install_jdk => true, :install_jre => true, :install_sources => false, :install_javadoc => true, } }
            it { should contain_package("openjdk-6-jdk").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-jre").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-source").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.7, jdk, jre, no sources, javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.7", :install_jdk => true, :install_jre => true, :install_sources => false, :install_javadoc => true, } }
            it { should contain_package("openjdk-7-jdk").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-jre").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-source").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.6, jdk, jre, no sources, no javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :install_jdk => true, :install_jre => true, :install_sources => false, :install_javadoc => false, } }
            it { should contain_package("openjdk-6-jdk").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-jre").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-source").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.7, jdk, jre, no sources, no javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.7", :install_jdk => true, :install_jre => true, :install_sources => false, :install_javadoc => false, } }
            it { should contain_package("openjdk-7-jdk").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-jre").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-source").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.6, jdk, no jre, sources, javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :install_jdk => true, :install_jre => false, :install_sources => true, :install_javadoc => true, } }
            it { should contain_package("openjdk-6-jdk").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-jre").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-source").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.7, jdk, no jre, sources, javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.7", :install_jdk => true, :install_jre => false, :install_sources => true, :install_javadoc => true, } }
            it { should contain_package("openjdk-7-jdk").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-jre").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-source").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.6, jdk, no jre, sources, no javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :install_jdk => true, :install_jre => false, :install_sources => true, :install_javadoc => false, } }
            it { should contain_package("openjdk-6-jdk").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-jre").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-source").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.7, jdk, no jre, sources, no javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.7", :install_jdk => true, :install_jre => false, :install_sources => true, :install_javadoc => false, } }
            it { should contain_package("openjdk-7-jdk").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-jre").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-source").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.6, jdk, no jre, no sources, javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :install_jdk => true, :install_jre => false, :install_sources => false, :install_javadoc => true, } }
            it { should contain_package("openjdk-6-jdk").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-jre").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-source").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.7, jdk, no jre, no sources, javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.7", :install_jdk => true, :install_jre => false, :install_sources => false, :install_javadoc => true, } }
            it { should contain_package("openjdk-7-jdk").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-jre").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-source").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.6, jdk, no jre, no sources, no javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :install_jdk => true, :install_jre => false, :install_sources => false, :install_javadoc => false, } }
            it { should contain_package("openjdk-6-jdk").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-jre").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-source").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.7, jdk, no jre, no sources, no javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.7", :install_jdk => true, :install_jre => false, :install_sources => false, :install_javadoc => false, } }
            it { should contain_package("openjdk-7-jdk").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-jre").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-source").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.6, no jdk, jre, sources, javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :install_jdk => false, :install_jre => true, :install_sources => true, :install_javadoc => true, } }
            it { should_not contain_package("openjdk-6-jdk").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-jre").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-source").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.7, no jdk, jre, sources, javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.7", :install_jdk => false, :install_jre => true, :install_sources => true, :install_javadoc => true, } }
            it { should_not contain_package("openjdk-7-jdk").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-jre").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-source").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.6, no jdk, jre, sources, no javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :install_jdk => false, :install_jre => true, :install_sources => true, :install_javadoc => false, } }
            it { should_not contain_package("openjdk-6-jdk").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-jre").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-source").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.7, no jdk, jre, sources, no javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.7", :install_jdk => false, :install_jre => true, :install_sources => true, :install_javadoc => false, } }
            it { should_not contain_package("openjdk-7-jdk").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-jre").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-source").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.6, no jdk, jre, no sources, javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :install_jdk => false, :install_jre => true, :install_sources => false, :install_javadoc => true, } }
            it { should_not contain_package("openjdk-6-jdk").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-jre").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-source").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.7, no jdk, jre, no sources, javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.7", :install_jdk => false, :install_jre => true, :install_sources => false, :install_javadoc => true, } }
            it { should_not contain_package("openjdk-7-jdk").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-jre").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-source").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.6, no jdk, jre, no sources, no javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :install_jdk => false, :install_jre => true, :install_sources => false, :install_javadoc => false, } }
            it { should_not contain_package("openjdk-6-jdk").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-jre").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-source").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.7, no jdk, jre, no sources, no javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.7", :install_jdk => false, :install_jre => true, :install_sources => false, :install_javadoc => false, } }
            it { should_not contain_package("openjdk-7-jdk").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-jre").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-source").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.6, no jdk, no jre, sources, javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :install_jdk => false, :install_jre => false, :install_sources => true, :install_javadoc => true, } }
            it { should_not contain_package("openjdk-6-jdk").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-jre").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-source").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.7, no jdk, no jre, sources, javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.7", :install_jdk => false, :install_jre => false, :install_sources => true, :install_javadoc => true, } }
            it { should_not contain_package("openjdk-7-jdk").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-jre").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-source").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.6, no jdk, no jre, sources, no javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :install_jdk => false, :install_jre => false, :install_sources => true, :install_javadoc => false, } }
            it { should_not contain_package("openjdk-6-jdk").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-jre").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-source").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.7, no jdk, no jre, sources, no javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.7", :install_jdk => false, :install_jre => false, :install_sources => true, :install_javadoc => false, } }
            it { should_not contain_package("openjdk-7-jdk").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-jre").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-source").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.6, no jdk, no jre, no sources, javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :install_jdk => false, :install_jre => false, :install_sources => false, :install_javadoc => true, } }
            it { should_not contain_package("openjdk-6-jdk").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-jre").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-source").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-6-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.7, no jdk, no jre, no sources, javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.7", :install_jdk => false, :install_jre => false, :install_sources => false, :install_javadoc => true, } }
            it { should_not contain_package("openjdk-7-jdk").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-jre").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-source").with( "ensure" => "latest" ) }
            it { should contain_package("openjdk-7-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.6, no jdk, no jre, no sources, no javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.6", :install_jdk => false, :install_jre => false, :install_sources => false, :install_javadoc => false, } }
            it { should_not contain_package("openjdk-6-jdk").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-jre").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-source").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-6-doc").with( "ensure" => "latest" ) }
        end
        
        context "OpenJDK 1.7, no jdk, no jre, no sources, no javadoc" do
            let(:params) { { :vendor => "openjdk", :version => "1.7", :install_jdk => false, :install_jre => false, :install_sources => false, :install_javadoc => false, } }
            it { should_not contain_package("openjdk-7-jdk").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-jre").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-source").with( "ensure" => "latest" ) }
            it { should_not contain_package("openjdk-7-doc").with( "ensure" => "latest" ) }
        end
        
    end

end