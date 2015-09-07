RSpec.describe Findjobs::Finder do
  let(:term) { 'ruby' }

  subject { described_class.new(term) }

  before do
    expect_any_instance_of(described_class)
      .to receive(:find).and_return(build_list(:job, 10))
  end

  describe '#by_date' do
    it 'returns a hash' do
      expect(subject.by_date).to be_a(Hash)
    end

    it 'groups jobs by date' do
      expect(subject.by_date.keys.sample).to be_a(Date)
    end

    it 'returns dates sorted in descending order' do
      dates = subject.by_date.keys
      expect(dates[0]).to be > dates[1]
    end
  end

  describe '#find' do
    it 'returns an array' do
      expect(subject.find).to be_a(Array)
    end
  end
end
