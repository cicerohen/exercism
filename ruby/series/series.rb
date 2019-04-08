class Series
  def initialize(series = '')
    @series = series
  end
  def slices(chunk = 1)
    @series..each_with_index.map {
      |item, index|
      start_at = index
      end_at = index+1
      if end_at < @series.length
        @series[start_at..end_at]
      end 
    }.compact
  end
end