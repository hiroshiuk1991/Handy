class RecipesController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:index, :show]

    def index
        @recipes = Recipe.all 
    end

    def show
        @recipe = Recipe.find(params[:id])
        @ingr = @recipe.dish_ingredients.split(',')
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

    def edit
        @recipe = Recipe.find(params[:id]) 
    end 

    def update
        @recipe = Recipe.find(params[:id])

        if @recipe.update(recipe_params)
            redirect_to recipe_path(@recipe), notice: "Changes saved"
        else 
            render 'edit'
        end
    end 

    def destroy
        Recipe.find(params[:id]).destroy
        redirect_to recipes_path #should redirect to login page 
    end 


    private 

    def recipe_params
        params.require(:recipe).permit(:dish_name, :user_id, :description, :instructions, :dish_ingredients)
    end 

    def require_login 
        return head(:forbidden) unless session.include? :user_id 
    end

end
