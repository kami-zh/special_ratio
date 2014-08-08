require 'ratio_for_design/version'
require 'ratio_for_design/ratio'

module RatioForDesign
  def golden_ratio(params)
    GoldenRatio.new(params).answer
  end

  def silver_ratio(params)
    SilverRatio.new(params).answer
  end

  alias_method :gr, :golden_ratio
  alias_method :sr, :silver_ratio
end
