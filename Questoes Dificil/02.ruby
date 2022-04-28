class BookStore
    DISCOUNT = {
      1 => 1.0,
      2 => 0.95,
      3 => 0.90,
      4 => 0.80,
      5 => 0.75
    }
    def self.calculate_price(books)
      groups = []
      books.each do |b|
        if groups.none? { |g| !g.include?(b) }
          groups << [b]
        else
          group = groups
            .select { |g| !g.include?(b) }
            .max_by { |g| g.size % 4 }
          group << b
        end
      end
      groups.sum { |g| g.size * 8 * DISCOUNT[g.size] }
    end
  end