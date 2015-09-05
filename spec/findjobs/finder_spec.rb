RSpec.describe Findjobs::Finder do
  let(:term) { 'ruby' }

  subject { described_class.new(term) }

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
