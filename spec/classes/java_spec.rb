require 'spec_helper'
 
describe 'java', :type => 'class' do
    
    context "On an Ubuntu OS" do
        let :facts do
            {
                :osfamily => 'Ubuntu'
            }
        end
         
        it {
            # should contain_package('java')
        }
    end

end