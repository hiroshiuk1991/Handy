class RecipesController < ApplicationController


    def show
       @recipe = Recipe.find(params[:id])
    end 

    def new
            @recipe = Recipe.new
    end 

    def create
        @recipe = current_user.recipes.build(recipe_params)

        if @recipe.save
			redirect_to users_path, notice: "Successfull added a new recipe"
		else    
			render 'new'
		end 
    end 


private 

def recipe_params
    params.require(:recipe).permit(:dish_name, :user_id, :description, :instructions)
end 



end
