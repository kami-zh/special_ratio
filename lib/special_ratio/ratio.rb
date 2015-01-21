module SpecialRatio
  class Ratio
    VALID_KEYS = [:long, :short, :sum]

    def initialize(params)
      params = params.select { |k, v| VALID_KEYS.include?(k) }

      unless params.size == 1
        raise ArgumentError, ':long or :short or :sum is required'
      end

      @key, @value = params.map { |k, v| [k, v] } .flatten
    end

    def long
      case @key
      when :long
        @value
      when :short
        @value * @ratio
      when :sum
        @value * (@ratio / (@ratio + 1))
      end
    end

    def short
      case @key
      when :long
        @value / @ratio
      when :short
        @value
      when :sum
        @value / (@ratio + 1)
      end
    end

    def sum
      case @key
      when :long
        @value * ((@ratio + 1) / @ratio)
      when :short
        @value * (@ratio + 1)
      when :sum
        @value
      end
    end
  end
end
