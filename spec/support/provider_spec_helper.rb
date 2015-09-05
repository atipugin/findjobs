RSpec.shared_examples 'a provider' do
  let(:term) { 'ruby' }
  let(:location) { 'berlin' }

  subject { described_class.new(term) }

  describe '#search' do
    it 'is implemented' do
      expect { subject.search }.not_to raise_error
    end

    it 'returns an array' do
      expect(subject.search).to be_a(Array)
    end

    it 'returns a list of jobs' do
      expect(subject.search.sample).to be_a(Findjobs::Job)
    end
  end
end
