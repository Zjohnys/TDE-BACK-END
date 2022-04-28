class Anagram
    def initialize(subject)
      @subject = subject
    end
    def match(candidates)
      candidates.select {|candidate| self =~ candidate }
    end
    def =~(other)
      @subject.letters == other.letters
    end
  end