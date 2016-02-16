require "rails_helper"

RSpec.describe IngredientsController, type: :controller do

	describe "GET #index" do
		it "should return a success code(200)" do

			get :index
			expect(response.code).to eq("200")
		end
	end

	describe "GET #show" do
		it "should return a success code(200)" do
			ingredient = Ingredient.create(name: "Carrot", calorie: "350")
			get :show, {id: ingredient.id}
			expect(response).to be_success
			ingredient.destroy
		end
		it "should return a not found code(404)" do
			ingredient = Ingredient.create(name: "Carrot", calorie: "350")
			get :show, id: -1
			expect(response).to be_not_found
			ingredient.destroy
		end
	end

	describe "POST #create" do
		it "should create a new Ingredient" do
			expect {
				post :create, {ingredient: {name: "Carrot", calorie: "350"}}
			}.to change(Ingredient, :count).by(1)
		end
		it "should raise a error when no wrapper" do
			expect {
				post :create, {name: "Carrot", calorie: "350"}
			}.to raise_error(ActionController::ParameterMissing)
		end
	end

	describe "DELETE #destroy" do
		it "should delete an ingredient" do
			ingredient = Ingredient.create(name: "Carrot", calorie: "350")
			expect {
				delete :destroy, {id: ingredient.id}
				}.to change(Ingredient, :count).by(-1)
		end
	end
end