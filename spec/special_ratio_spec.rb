require 'spec_helper'

describe SpecialRatio::Ratio do
  describe 'GoldenRatio' do
    context 'pass :long' do
      let(:value) { SpecialRatio::GoldenRatio.new(long: 100) }

      it 'should be calculated correctly' do
        expect(value.long.round).to  eq(100)
        expect(value.short.round).to eq(62)
        expect(value.sum.round).to   eq(162)
      end
    end

    context 'pass :short' do
      let(:value) { SpecialRatio::GoldenRatio.new(short: 100) }

      it 'should be calculated correctly' do
        expect(value.long.round).to  eq(162)
        expect(value.short.round).to eq(100)
        expect(value.sum.round).to   eq(262)
      end
    end

    context 'pass :sum' do
      let(:value) { SpecialRatio::GoldenRatio.new(sum: 100) }

      it 'should be calculated correctly' do
        expect(value.long.round).to  eq(62)
        expect(value.short.round).to eq(38)
        expect(value.sum.round).to   eq(100)
      end
    end
  end

  describe 'SilverRatio' do
    context 'pass :long' do
      let(:value) { SpecialRatio::SilverRatio.new(long: 100) }

      it 'should be calculated correctly' do
        expect(value.long.round).to  eq(100)
        expect(value.short.round).to eq(71)
        expect(value.sum.round).to   eq(171)
      end
    end

    context 'pass :short' do
      let(:value) { SpecialRatio::SilverRatio.new(short: 100) }

      it 'should be calculated correctly' do
        expect(value.long.round).to  eq(141)
        expect(value.short.round).to eq(100)
        expect(value.sum.round).to   eq(241)
      end
    end

    context 'pass :sum' do
      let(:value) { SpecialRatio::SilverRatio.new(sum: 100) }

      it 'should be calculated correctly' do
        expect(value.long.round).to  eq(59)
        expect(value.short.round).to eq(41)
        expect(value.sum.round).to   eq(100)
      end
    end
  end
end
