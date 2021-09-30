# frozen_string_literal: true

RSpec.describe Validator do
  describe '.validate' do
    subject { described_class.validate(renavam) }

    context 'when the renavam number is too short' do
      let(:renavam) { '5835347481' }
      it { is_expected.to be_falsey }
    end

    context 'when the renavam number is too long' do
      let(:renavam) { '583534748100' }
      it { is_expected.to be_falsey }
    end

    context 'when the renavam number contains letters' do
      let(:renavam) { '58353474810ABC' }
      it { is_expected.to be_falsey }
    end

    context 'when the renavam number is invalid' do
      context 'and the param is string' do
        let(:renavam) { '58353474812' }
        it { is_expected.to be_falsey }
      end

      context 'and the param is integer' do
        let(:renavam) { 58_353_474_812 }
        it { is_expected.to be_falsey }
      end
    end

    context 'when the renavam number is valid' do
      context 'and the param is string' do
        let(:renavam) { '58353474810' }
        it { is_expected.to be_truthy }
      end

      context 'and the param is integer' do
        let(:renavam) { 58_353_474_810 }
        it { is_expected.to be_truthy }
      end
    end
  end
end
