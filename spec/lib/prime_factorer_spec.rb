describe PrimeFactorer do
  describe "#generate" do
    let(:prime_factorer) { PrimeFactorer }

    it "returns an empty array when passed 1" do
      expect(prime_factorer.generate(1)).to eq([])
    end

    it "returns [2] when passed 2" do
      expect(prime_factorer.generate(2)).to eq([2])
    end

    it "returns [3] when passed 3" do
      expect(prime_factorer.generate(3)).to eq([3])
    end

    it "returns [2, 2] when passed 4" do
      expect(prime_factorer.generate(4)).to eq([2, 2])
    end

    it "returns [2, 3] when passed 6" do
      expect(prime_factorer.generate(6)).to eq([2, 3])
    end

    it "returns [2, 2, 2] when passed 8" do
      expect(prime_factorer.generate(8)).to eq([2, 2, 2])
    end

    it "returns [3, 3] when passed 9" do
      expect(prime_factorer.generate(9)).to eq([3, 3])
    end
  end
end
