require 'spec_helper'

describe RatioForDesign do
  include RatioForDesign

  describe '#golden_ratio' do
    context 'with valid parameter' do
      it 'calculate correct' do
        expect(gr(long: 0)).to          be == 0
        expect(gr(long: 55.5).round).to be == 34
        expect(gr(long: 100).round).to  be == 62
        expect(gr(short: 0)).to         be == 0
        expect(gr(short: 55.5)).to      be == 89.799
        expect(gr(short: 100)).to       be == 161.8
      end
    end

    context 'with invalid parameter' do
      it 'raise Argument Error' do
        expect { gr(short: -100) }.to           raise_error(ArgumentError)
        expect { gr(short: 100, long: 100) }.to raise_error(ArgumentError)
        expect { gr(short: 'string') }.to       raise_error(ArgumentError)
      end
    end
  end

  describe '#silver_ratio' do
    context 'with valid parameter' do
      it 'calculate correct' do
        expect(sr(long: 0)).to           be == 0
        expect(sr(long: 55.5).round).to  be == 39
        expect(sr(long: 100).round).to   be == 71
        expect(sr(short: 0)).to          be == 0
        expect(sr(short: 55.5).round).to be == 78
        expect(sr(short: 100)).to        be == 141.4
      end
    end

    context 'with invalid parameter' do
      it 'raise Argument Error' do
        expect { sr(short: -100) }.to           raise_error(ArgumentError)
        expect { sr(short: 100, long: 100) }.to raise_error(ArgumentError)
        expect { sr(short: 'string') }.to       raise_error(ArgumentError)
      end
    end
  end
end
