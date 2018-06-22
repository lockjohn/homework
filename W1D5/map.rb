class Map

  def initialize
    @map = []
  end

  def set(key, value)
    present = false
    #add [key,value] to map, or if key present then update
    @map.each do |pair|
      if pair[0] = key
        pair = [key,value]
        present = true
        break
      end
    end

    @map << [key,value] if present false
  end

  def get(key)

  end

  def delete(key)

  end

  def show

  end

end
