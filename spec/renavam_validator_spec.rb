# frozen_string_literal: true

RSpec.describe RenavamValidator do
  it 'has a version number' do
    expect(RenavamValidator::VERSION).not_to be nil
  end

  describe '#valid?' do
    before do
      Renavam.valid?(renavam)
    end

    context 'when the renavam number is valid' do
      context 'and the param is an integer' do
        let(:renavam) { 58353474810 }
        it { is_expected.to be_truthy }
      end

      context 'and the param is a string' do
        let(:renavam) { '58353474810' }
        it { is_expected.to be_truthy }
      end
    end

    context 'when the renavam number is invalid' do
      context 'and the param is an integer' do
        let(:renavam) { 53474810 }
        it { is_expected.to be_falsey }
      end

      context 'and the param is a string' do
        let(:renavam) { '474810' }
        it { is_expected.to be_falsey }
      end
    end
  end
end
