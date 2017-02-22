require 'spec_helper'

describe command('uname -r') do
  its(:stdout) { should match /3.14.79(-v7)?+/ }
  its(:exit_status) { should eq 0 }
end

describe file('/lib/modules/3.14.79-105/kernel') do
  it { should be_directory }
end
