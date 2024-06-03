# rubocop:disable Metrics/BlockLength
require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  before(:each) { request.headers['Accept'] = 'application/api.marketplace.v1' }

  describe 'GET /show' do
    before(:each) do
      @user = FactoryBot.create :user
      get :show, params: { id: @user.id }, format: :json
    end

    it 'returns the information about a reporter on a hash' do
      user_response = JSON.parse(response.body, symbolize_names: true)
      expect(user_response[:email]).to eq @user.email
    end

    it { should respond_with :ok }
  end

  describe 'POST #create' do
    context 'when is successfully created' do
      before(:each) do
        @user_attributes = FactoryBot.attributes_for :user
        post :create, params: { user: @user_attributes }, format: :json
      end

      it 'renders the json representation for the user record just created' do
        @user_response = JSON.parse(response.body, symbolize_names: true)
        expect(@user_response[:email]).to eq @user_attributes[:email]
      end

      it { should respond_with 201 }
    end

    context 'when is not created' do
      before(:each) do
        @invalid_user_attributes = {
          password: '123456',
          password_confirmation: '123456'
        }
        post :create, params: { user: @invalid_user_attributes }, format: :json
      end

      it 'renderers an json error' do
        @user_response = JSON.parse(response.body, symbolize_names: true)
        expect(@user_response).to have_key(:errors)
      end

      it 'renders the json error because users cant not be created' do
        @user_response = JSON.parse(response.body, symbolize_names: true)
        expect(@user_response[:errors][:email]).to include "can't be blank"
      end
    end
  end

  describe 'PATCH/PUT #update' do
    context 'when is succesfully updated' do
      before(:each) do
        @user = FactoryBot.create :user
        patch :update, params: { user: { email: 'newemail@gmai.com' }, id: @user.id }, format: :json
      end

      it 'renders the json representation for the updated user' do
        @user_response = JSON.parse(response.body, symbolize_names: true)
        expect(@user_response[:email]).to eq 'newemail@gmai.com'
      end

      it { should respond_with 201 }
    end

    context "when isn't update" do
      before(:each) do
        @user = FactoryBot.create :user
        patch :update, params: { id: @user.id, user: { email: 'invalidemail.com' } }, format: :json
      end

      it 'renders an error json' do
        @user_response = JSON.parse(response.body, symbolize_names: true)
        expect(@user_response).to have_key :errors
      end

      it 'renders the json errors because we received invalid email' do
        @user_response = JSON.parse(response.body, symbolize_names: true)
        expect(@user_response[:errors][:email]).to include 'is invalid'
      end

      it { should respond_with 422 }
    end
  end

  describe 'DELETE #destroy' do
    before(:each) do
      @user = FactoryBot.create :user
      delete :destroy, params: { id: @user.id }, format: :json
    end

    it { should respond_with 204 }

  end
end

# rubocop:enable Metrics/BlockLength
