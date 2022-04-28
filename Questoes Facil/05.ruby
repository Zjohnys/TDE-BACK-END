class Acronym
    def self.abbreviate(acronym)
      acronym.scan(/^([\w])|\W([\w])|([A-Z])[a-z]/).join.upcase
    end
  end