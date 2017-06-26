module RaceBet
  class Race

    class << self
      def score(guesses, winners)
        initial_score = (guesses[0..5] & winners[0..5]).count
        scala = [14, 9, 4, 2]

        exact_matches_score = 0
        scala.each_with_index do |point, i|
          exact_matches_score += point if winners[i] && guesses[i] == winners[i]
        end

        initial_score + exact_matches_score
      end
    end

  end
end
