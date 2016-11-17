class String
  define_method(:find_replace) do | word,replacement |
    new_word = self.sub!([/c\w\w/gi, "dog" )
    new_word
  end
end
