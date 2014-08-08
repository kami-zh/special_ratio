module RatioForDesign
  class Ratio
    attr_accessor :ratio

    def initialize(params)
      @long, @short = params[:long], params[:short]

      unless @long.nil? ^ @short.nil?
        raise ArgumentError, 'only :long or :short expected'
      end

      @value = @long || @short

      raise ArgumentError, 'only numeric expected' unless numeric?(@value)
    end

    def answer
      case given_side
      when :long
        @value / self.ratio
      when :short
        @value * self.ratio
      end
    end

    private

    def given_side
      @long ? :long : :short
    end

    def numeric?(value)
      value.is_a? Numeric
    end
  end

  class GoldenRatio < Ratio
    RATIO_VALUE = 1.6

    def initialize(params)
      self.ratio = RATIO_VALUE
      super
    end
  end

  class SilverRatio < Ratio
    RATIO_VALUE = 1.4

    def initialize(params)
      self.ratio = RATIO_VALUE
      super
    end
  end
end
