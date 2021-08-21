require 'serverspec'

# Required by serverspec
set :backend, :exec

describe file('/var/tmp/extraswap') do
  it { should be_readable }
end
