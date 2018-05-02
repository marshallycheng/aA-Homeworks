FISH = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(array)
  sorted = false
  until sorted
    sorted = true
  array.each_with_index do |fish1, idx1|
    (idx1 + 1...array.length).each do |idx2|
      if fish1.length > array[idx2].length
      array[idx1],array[idx2] =array[idx2], array[idx1]
        sorted = false
      end
    end
  end
  array[-1]
end

def dominant_octopus(array)
  return self if array.length <= 1
  idx_center = array.length / 2
  left = array[0..idx_center]
  right = array[idx_center + 1..-1]
  merge(left.dominant_octopus, right.dominant_octopus)
end

def merge(left, right)
  new_arr = []
  until left.empty? || right.empty?
    if left[0] < right[0]
      new_arr << left.shift
    else
      new_arr << right.shift
    end
  end
  new_arr + left + right
end

def clever_octopus(array)
  longest_fish = ""
  array.each do |fish|
    if fish.length > longest_fish.length
      longest_fish = fish
    end
  end
  longest_fish
end

TILES_ARRAY = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, TILES_ARRAY)
  TILES_ARRAY.each_with_index do |direct, idx|
    return idx if direction == direct
  end
end

TILES_HASH = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5
  "left" => 6,
  "left-up" => 7
}
def constant_dance!(direction, TILES_HASH)
  TILES_HASH[direction]
end
