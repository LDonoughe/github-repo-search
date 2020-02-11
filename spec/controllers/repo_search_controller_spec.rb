# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

RSpec.describe RepoSearchController do
  describe 'GET show' do
    it 'get 2XX' do
      get :show, params: { query: '' }
      expect(response).to be_successful
    end
  end
end
