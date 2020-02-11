# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

require 'pry'
# binding.pry

RSpec.describe RepoSearchController do
  describe 'GET show' do
    it 'assigns @results' do
      # binding.pry
      get :show, params: {  query: '' }
      expect(assigns(:results)).to eq([])
    end
  end
end
