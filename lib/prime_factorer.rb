module PrimeFactorer
  def self.generate(number)
    primes = []
    candidate = 2
    while number > 1
      while number % candidate == 0
        primes << candidate
        number /= candidate
      end
      candidate += 1
    end
    primes
  end
end
