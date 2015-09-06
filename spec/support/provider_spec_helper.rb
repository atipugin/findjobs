RSpec.shared_examples 'a provider' do
  let(:term) { 'ruby' }

  subject { described_class.new(term) }

  before do
    expect_any_instance_of(described_class)
      .to receive(:search).and_return(build_list(:job, 10))
  end

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
