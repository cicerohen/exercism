class Series
  def initialize(series = '')
    @series = series
  end
  def slices(splitter = 0)
    @series.split("").each_with_index.map {
      |item, index|
      if (splitter > @series.length)
        raise ArgumentError.new
      end
      spltr = splitter <= 0 && @series.length || splitter
      start_at = index
      end_at = (index-1)+spltr
      if end_at < @series.length
        @series[start_at..end_at]
      end
    }.compact
  end
end