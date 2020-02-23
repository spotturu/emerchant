RSpec.describe "MerchantsController", type: :controller do
  let!(:Merchant) { FactoryBot.create(:merchant) }
  
  describe 'GET index' do
    it 'assigns @merchants' do
      merchants = Merchant.all
      get :index
      expect(assigns(:merchants)).to eq([merchants])
    end
  
    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end

end