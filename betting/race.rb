module RaceBet
  class Race

    class << self
      def score(guesses, winners)
        score = (guesses[0..5] & winners[0..5]).count
        scala = [14, 9, 4, 2]

        (0..3).each do |i|
          score += scala[i] if  winners[i] && guesses[i] == winners[i]
        end

        score
      end
    end

  end
end
