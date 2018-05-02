class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    found = false
    @map.each do |k_v_pair|
      k_v_pair[1] = value if k_v_pair[0] == key
      found = true
    end
    @map << [key, value] if !found
  end

  def lookup(key)
    @map.each do |k_v_pair|
      return k_v_pair[1] if k_v_pair[0] == key
    end
  end

  def remove(key)
    @map.each do |k_v_pair|
      return k_v_pair if k_v_pair[0] == key
    end
  end

  def show
    @map
  end
end
