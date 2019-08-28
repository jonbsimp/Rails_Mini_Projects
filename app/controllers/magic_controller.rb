class MagicController < ApplicationController

    def magic
        @input = params[:input]
        responses = ["Try again later","Outlook says no","Yes","The heavens point to yes","beat it!", "You broke it", "You're drunk, go home.", "Just do it", "Don't count on it", "Doubtful"]
        @random = responses.sample
        flash.now[:alert] = "Your question:  #{@input}"
        flash.now[:notice] = "Magic Ball says:  #{@random}"
    end
end
