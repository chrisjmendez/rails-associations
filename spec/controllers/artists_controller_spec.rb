require 'rails_helper'

RSpec.describe ArtistsController, type: :controller do

  describe "GET new" do
    before { get :new }
    it { should render_template('new') }      
    
    it "assigns new Artist to @artist" do 
      expect(assigns(:artist)).to be_a_new(Artist)
    end
  end
  
  describe "GET show" do
    let(:a) { FactoryGirl.create(:artist) }
#    before { get :show }    
#    it { should render_template('show') }
    get :show, id: a
    expect(response).to render_template(:show)
  end
  
  describe "POST #new" do
    before { post :new }
  end
end
