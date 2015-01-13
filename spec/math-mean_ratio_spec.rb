require 'spec_helper'

describe Math::MeanRatio::Ratio do
  describe 'GoldenRatio' do
    context 'pass :long' do
      let(:value) { Math::MeanRatio::GoldenRatio.new(long: 100) }

      it 'should be calculated correctly' do
        expect(value.long.round).to  eq(100)
        expect(value.short.round).to eq(62)
        expect(value.sum.round).to   eq(162)
      end
    end

    context 'pass :short' do
      let(:value) { Math::MeanRatio::GoldenRatio.new(short: 100) }

      it 'should be calculated correctly' do
        expect(value.long.round).to  eq(162)
        expect(value.short.round).to eq(100)
        expect(value.sum.round).to   eq(262)
      end
    end

    context 'pass :sum' do
      let(:value) { Math::MeanRatio::GoldenRatio.new(sum: 100) }

      it 'should be calculated correctly' do
        expect(value.long.round).to  eq(62)
        expect(value.short.round).to eq(38)
        expect(value.sum.round).to   eq(100)
      end
    end
  end

  describe 'SilverRatio' do
    context 'pass :long' do
      let(:value) { Math::MeanRatio::SilverRatio.new(long: 100) }

      it 'should be calculated correctly' do
        expect(value.long.round).to  eq(100)
        expect(value.short.round).to eq(71)
        expect(value.sum.round).to   eq(171)
      end
    end

    context 'pass :short' do
      let(:value) { Math::MeanRatio::SilverRatio.new(short: 100) }

      it 'should be calculated correctly' do
        expect(value.long.round).to  eq(141)
        expect(value.short.round).to eq(100)
        expect(value.sum.round).to   eq(241)
      end
    end

    context 'pass :sum' do
      let(:value) { Math::MeanRatio::SilverRatio.new(sum: 100) }

      it 'should be calculated correctly' do
        expect(value.long.round).to  eq(59)
        expect(value.short.round).to eq(41)
        expect(value.sum.round).to   eq(100)
      end
    end
  end
end
