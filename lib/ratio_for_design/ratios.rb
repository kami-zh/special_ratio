module RatioForDesign
  class GoldenRatio < Ratio
    GOLDEN_RATIO = 1.618

    def initialize(params)
      self.ratio = GOLDEN_RATIO
      super
    end
  end

  class SilverRatio < Ratio
    SILVER_RATIO = 1.414

    def initialize(params)
      self.ratio = SILVER_RATIO
      super
    end
  end
end
