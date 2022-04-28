class ResistorColorDuo
    def self.value(array)
      colors = %w[black brown red orange yellow green blue violet grey white]
      array.take(2).map {|color| "#{colors.find_index(color)}"}.join.to_i
    end
  end