# frozen_string_literal: true

require 'http'
require_relative '../../lib/github'

class RepoSearchController < ApplicationController
  def show
    puts params
    q = params['query']
    if q && !q.empty?
      # This could be improved by using a more secure way to access github
      #   and therefore not running into request timeouts as fast
      #   though that hasn't been an issue for me thus far
      @results = Github.get_results(q)
    end
  end

  private

  def search_params
    params.permit(:query)
  end
end
