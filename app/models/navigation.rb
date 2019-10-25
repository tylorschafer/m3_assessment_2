class Navigation

  attr_reader :duration, :steps

  def initialize(attrs = {})
    @duration = attrs['duration']
    @steps_hash = attrs['steps']
    @steps = []
  end

  def load_steps
    @steps_hash.each do |step|
      @steps << step['html_instructions']
    end
  end
end
