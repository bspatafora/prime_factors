module PrimeFactorsHelper
  def separate_prime_factors(factors)
    factors.join(t(:number_separator))
  end
end
