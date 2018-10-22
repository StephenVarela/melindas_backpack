class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def weather_type
    weather_type = @attributes[:weather]
  end

  def day_of_week
    day_of_week = @attributes[:day_of_week]
  end

  def add_default_items
    @items << 'pants'
    @items << 'shirt'
  end

  def add_rainy_day_items
    @items << 'umbrella'
  end

  def add_cold_day_items
      @items << 'jacket'
  end

  def prepare_for_weather
    add_default_items
    if weather_type == 'rainy'
      add_rainy_day_items
    elsif weather_type == 'cold'
      add_cold_day_items
    end
  end

  def prepare_for_day
    # Ensure gym shoes are added to backpack on mondday & thursday
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end

    # Bring a packed lunch on all weekdays
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    end
  end

  def prepare
    prepare_for_weather
    prepare_for_day
  end


  # Prints a summary packing list for Melinda's backpack
  def print_backpack_contents
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
