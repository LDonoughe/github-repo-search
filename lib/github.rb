# frozen_string_literal: true

require 'http'

class Github
  def self.get_results(q)
    result = HTTP.get("https://api.github.com/search/repositories?q=#{q}")
    JSON.parse(result.to_s)['items']
  end
end
