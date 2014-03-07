# coding: utf-8
require 'spec_helper'

describe UsersController do
  let(:user) { create :user }

  describe '#create' do
    let(:request) { post :create, user: { email: user.email, password: user.password, password_confirmation: user.password_confirmation } }

    it 'should add a record' do
      expect { request }.to change(User, :count).by 1
    end

    it 'should redirect to root_url' do
      pending 'this must work but now I dont have time to retain'
      request
      expect(response).to redirect_to(root_url)
    end
  end
end
