module Ex25
  
  #This function will break up words for us.
  def Ex25.break_words(stuff)
    words = stuff.split(' ')
    return words 
  end

  #Sorts the words
  def Ex25.sort_words(words)
    return words.sort
  end

  #Prints the first word after shifting it off.
  def Ex25.print_first_word(words)
    word = words.shift
    puts word
  end

  #Prints the last word after poping it off
  def Ex25.print_last_word(words)
    word = words.pop
    puts word
  end

  #Takes in a full sentence and returns the sorted words.
  def Ex25.sort_sentence(sentence)
    words = Ex25.break_words(sentence)
    return Ex25.sort_words(words)
  end

  #Prints the first and last words of the sentence.
  def Ex25.print_first_and_last(sentence)
    words = Ex25.break_words(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

  #Sorts the words then prints the first and last one.
  def Ex25.print_first_and_last_sorted(sentence)
    words = Ex25.sort_sentence(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

end

#********************And We Get The Following *******************
# 2.6.0 :009 > require "./ex25.rb"
#  => true
# 2.6.0 :010 > sentence = "All good things come to those who wait."
#  => "All good things come to those who wait."
# 2.6.0 :011 > words = Ex25.break_words(sentence)
#  => ["All", "good", "things", "come", "to", "those", "who", "wait."]
# 2.6.0 :012 > words
#  => ["All", "good", "things", "come", "to", "those", "who", "wait."]
# 2.6.0 :013 > sorted_words = Ex25.sort_words(words)
#  => ["All", "come", "good", "things", "those", "to", "wait.", "who"]
# 2.6.0 :014 > sorted_words
#  => ["All", "come", "good", "things", "those", "to", "wait.", "who"]
# 2.6.0 :015 > Ex25.print_first_word(words)
# All
#  => nil
# 2.6.0 :016 > Ex25.print_last_word(words)
# wait.
#  => nil
# 2.6.0 :017 > words
#  => ["good", "things", "come", "to", "those", "who"]
# 2.6.0 :018 > Ex25.print_first_word(sorted_words)
# All
#  => nil
# 2.6.0 :019 > Ex25.print_last_word(sorted_words)
# who
#  => nil
# 2.6.0 :020 > sorted_words
#  => ["come", "good", "things", "those", "to", "wait."]
# 2.6.0 :021 > sorted_words = Ex25.sort_sentence(sentence)
#  => ["All", "come", "good", "things", "those", "to", "wait.", "who"]
# 2.6.0 :022 > sorted_words
#  => ["All", "come", "good", "things", "those", "to", "wait.", "who"]
# 2.6.0 :023 > Ex25.print_first_and_last(sentence)
# All
# wait.
#  => nil
# 2.6.0 :024 > Ex25.print_first_and_last_sorted(sentence)
# All
# who
#  => nil