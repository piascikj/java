require "spec_helper"
 
describe "java::requirements", :type => :class do
    
    context "to old Version" do
        @version = "1.5"
        it { expect raise_error }
    end
    
    context "not existing Version" do
        @version = "1.8"
        it { expect raise_error }
    end
    
    context "Version 1.6" do
        @version = "1.6"
        it { expect{}.to_not raise_error }
    end
    
    context "Version 1.7" do
        @version = "1.7"
        it { expect{}.to_not raise_error }
    end
    
    context "Unknown vendor" do
        @vendor = "unknown"
        it { expect raise_error }
    end
    
    context "vendor OpenJDK" do
        @vendor = "OpenJDK"
        it { expect{}.to_not raise_error }
    end
    
    context "vendor Oracle" do
        @vendor = "Oracle"
        it { expect{}.to_not raise_error }
    end
    
    context "vendor GNU" do
        @vendor = "GNU"
        it { expect{}.to_not raise_error }
    end
    
    context "vendor IBM" do
        @vendor = "IBM"
        it { expect{}.to_not raise_error }
    end
    
    context "Debian Family" do
        let(:facts)  { { :osfamily => "Debian", } }
        it { expect{}.to_not raise_error }
    end
    
    context "RedHat Family" do
        let(:facts)  { { :osfamily => "RedHat", } }
        it { expect raise_error }
    end
    
    context "Suse Family" do
        let(:facts)  { { :osfamily => "Suse", } }
        it { expect raise_error }
    end
    
    context "Solaris Family" do
        let(:facts)  { { :osfamily => "Solaris", } }
        it { expect raise_error }
    end
    
    context "Gentoo Family" do
        let(:facts)  { { :osfamily => "Gentoo", } }
        it { expect raise_error }
    end
    
    context "Archlinux Family" do
        let(:facts)  { { :osfamily => "Archlinux", } }
        it { expect raise_error }
    end
    
    context "Mandrake Family" do
        let(:facts)  { { :osfamily => "Mandrake", } }
        it { expect raise_error }
    end

end