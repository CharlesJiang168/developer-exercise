class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    newWords = []
    # words = str.split()
    words = str.split(/(\.|\?|\!|\W+)/)
    # print "#{words}"
    for word in words
      # puts "#{word}"
      if word.length > 4
        if word[0] == word[0].upcase
          newWords.push("Marklar")
        else
          newWords.push("marklar")
        end
      else
        newWords.push(word)
      end
    end
    return newWords.join("")
  end

  def self.fibonacci(n)
    # if n = 1, we want to output 1
    if n == 1
      1
    # if n = 2, we want to output 1
    elsif n == 2
      1
    # if n > 2, we want to output the sum of the previous two values
    else
      fibonacci(n - 1) + fibonacci(n - 2)
    end
  end

  # puts "fibonacci: #{fibonacci(2)}"
  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)

    a=[]; a[0]=1; a[1]=1;
    i = 1
    nthFibonacci = fibonacci(nth)
    while a[-1] < nthFibonacci
      a[i+1]=(a[i] + a[i-1])
      i +=1
    end
    x = 0
    a.each do |num|
      if num % 2 == 0
        x += num
      end
    end
    return x
 end

end

