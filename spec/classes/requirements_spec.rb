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

end