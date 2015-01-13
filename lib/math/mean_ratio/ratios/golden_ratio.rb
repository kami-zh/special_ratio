module Math
  module MeanRatio
    class GoldenRatio < Ratio
      def initialize(params)
        @ratio = 1.618
        super
      end
    end
  end
end
