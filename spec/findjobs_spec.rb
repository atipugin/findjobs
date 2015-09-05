RSpec.describe Findjobs, type: :aruba do
  it 'works' do
    run_simple 'findjobs --help'
  end
end
