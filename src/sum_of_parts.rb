class SumOfParts

  attr_reader :data, :result

  def initialize(data)
    @data = data
    @result = [0]
  end

  def call
    while(!data.empty?) do
      result.unshift(data.pop + result.first)
    end

    result
  end
end