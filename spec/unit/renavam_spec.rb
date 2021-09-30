# frozen_string_literal: true

RSpec.describe Renavam do
  describe '#valid?' do
    subject { described_class.valid?(renavam) }

    let(:renavam) { '58353474810' }

    it 'calls the validator class' do
      expect(Validator).to receive(:validate).with(renavam)
      subject
    end
  end
end
