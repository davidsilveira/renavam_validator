# frozen_string_literal: true

RSpec.describe RenavamValidator do
  it 'has a version number' do
    expect(RenavamValidator::VERSION).not_to be nil
  end

  describe '#valid?' do
    subject { Renavam.valid?(renavam) }

    context 'when the renavam number is valid' do
      context 'and the param is an integer' do
        let(:renavam) { 58_353_474_810 }
        it { is_expected.to be_truthy }
      end

      context 'and the param is a string' do
        let(:renavam) { '58353474810' }
        it { is_expected.to be_truthy }
      end
    end

    context 'when the renavam number is invalid' do
      context 'and the param is an integer' do
        let(:renavam) { 48_353_474_810 }
        it { is_expected.to be false }
      end

      context 'and the param is a string' do
        let(:renavam) { '48353474810' }
        it { is_expected.to be_falsey }
      end
    end
  end
end
