require 'rails_helper'

RSpec.describe WelcomeController, :type => :controller do
  describe '#index' do
    context "when $content is set" do
      before { $content = double }
      it 'should set content to $content' do
        get :index
        expect(assigns(:content)).to eq $content
      end
    end
    before { get :index }
    it { should render_template :index }
  end
end