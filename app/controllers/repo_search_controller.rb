# frozen_string_literal: true

class RepoSearchController < ApplicationController
  def show
    
    # search_github(search_params)
    @results = []
  end

  def search_params
    params.require(:query)
  end
end
