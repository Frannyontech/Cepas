require 'rails_helper'

RSpec.describe "Wines", type: :request do
  let(:valid_session) { {email: 'peter@mail.com', password: '123456'} }
  describe "GET index" do
    it 'Returns a successful response' do
      user = User.create(email: 'peter@mail.com', password: '123456')
      sign_in(user)
      get :index
      expect(response).to be_successful
    end
    it 'assings @wine' do
      wine = Wine.create(name: 'Test')
      wines = Wine.all
      user = User.create(email: 'peter@mail.com', password: '123456')
      sign_in(user)
      get  :index
      expect(assigns(:wines)).to eq(wines)
    end    

    it 'render the index template' do
      user = User.create(email: 'peter@mail.com', password: '123456')
      wine = Wine.create(name: 'Test')
      wine_id = Wine.last
      sign_in(user)
      get  :index
      expect(response).to render_template('index')
      get  :show, params:{id: wine_id}
      expect(response).to render_template('show')
    end 
  end  
end


