# frozen_string_literal: true

require 'http'

class RepoSearchController < ApplicationController
  def show
    puts params
    q = params['query']
    if q && !q.empty?
      # This could be improved by using a more secure way to access github
      #   and therefore not running into request timeouts as fast
      #   though that hasn't been an issue for me thus far
      @results = get_results(q)
    end
  end

  private

  def get_results(q)
    result = HTTP.get("https://api.github.com/search/repositories?q=#{q}")
    JSON.parse(result.to_s)['items']
  end

  def search_params
    params.permit(:query)
  end
end
