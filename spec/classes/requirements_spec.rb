require 'spec_helper'
 
describe 'requirements', :type => 'class' do
    
    context "to old Version" do
        @version = "1.5"
         
        it {
            expect raise_error
        }
    end
    
    context "not existing Version" do
        @version = "1.8"
         
        it {
            expect raise_error
        }
    end
    
    context "Version 1.6" do
        @version = "1.6"
         
        it {
            expect{}.to_not raise_error
        }
    end
    
    context "Version 1.7" do
        @version = "1.7"
         
        it {
            expect{}.to_not raise_error
        }
    end

end