RSpec.describe Findjobs::Cli do
  describe '#human_date' do
    let(:date) { Date.today - 99 }

    it 'returns human readable date' do
      expect(subject.send(:human_date, date)).to eq(date.strftime('%b %d, %Y'))
    end

    context 'when date is today' do
      let(:date) { Date.today }

      it 'returns "Today"' do
        expect(subject.send(:human_date, date)).to eq('Today')
      end
    end

    context 'when date is yesterday' do
      let(:date) { Date.today - 1 }

      it 'returns "Yesterday"' do
        expect(subject.send(:human_date, date)).to eq('Yesterday')
      end
    end
  end
end
