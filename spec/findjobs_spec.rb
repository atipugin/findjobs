RSpec.describe 'findjobs', type: :aruba do
  it 'works' do
    run_simple 'findjobs --help'
  end
end
