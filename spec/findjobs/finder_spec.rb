RSpec.describe Findjobs::Finder do
  let(:term) { 'ruby' }

  subject { described_class.new(term) }

  before do
    expect_any_instance_of(described_class)
      .to receive(:find).and_return(build_list(:job, 10))
  end

  describe '#find' do
    it 'returns an array' do
      expect(subject.find).to be_a(Array)
    end

    it 'sorts results by date' do
      results = subject.find
      expect(results[0].date).to be >= results[1].date
    end
  end
end
