# Have the function LongestWord(sen) take the sen parameter being passed and return the longest word in the string.
# If there are two or more words that are the same length, return the first word from the string with that length.
# Ignore punctuation and assume sen will not be empty.
# Words may also contain numbers, for example "Hello world123 567"

# version 1
# \w - any char: [a-zA-Z0-9_]
# \W - any not word char
# + sequence of 1 or more char
def longest_word(sen)
  sen.split(/\W+/).max_by(&:length)
end

# keep this function call here
puts longest_word("fun&!! time")
puts longest_word("&&* m## d! ...")
