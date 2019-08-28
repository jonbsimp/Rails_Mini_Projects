class MadlibsController < ApplicationController

    def madlibs
        @name = params[:name]
        @object = params[:object]
        @favorite_food = params[:favorite_food]
        @weapon = params[:weapon]
        @sound = params[:sound]
        @favorite_movie = params[:favorite_movie]
        if !@name.blank? && !@object.blank? && !@favorite_food.blank? && !@weapon.blank? && !@sound.blank? && !@favorite_movie.blank?

            flash.now[:alert] = "#{@name}, on your trip to Mexico, you came across a/an #{@object}. For whatever reason that #{@object} made you really hungry for a #{@favorite_food} taco. Out of the blue you heard a loud #{@sound}, and then you looked and picked up a #{@weapon}.  You than ran towards the #{@sound} only to find a #{@favorite_movie} playing on an old TV"
        else
            flash.now[:alert] = "Please fill out all boxes and click submit."
        end
    end


end
