class HiLoController < ApplicationController



    def hi_lo
        cookies[:answer] = (rand(1..10)).to_i unless !cookies[:answer].nil?
        # @key = cookies[:answer]
        @answer = cookies[:answer].to_i
        @guess= params[:guess].to_i
            if @guess < @answer
                flash.now[:notice]= "Higher"
            elsif @guess > @answer
                flash.now[:notice]= "Lower"
            elsif @guess = @answer
                flash.now[:notice]= "You Win!!!"
                cookies.delete :answer

            else
                "Put in a number between 1 and 10"
            end

    end


end
