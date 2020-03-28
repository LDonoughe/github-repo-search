# frozen_string_literal: true

describe Github do
  # Use Webmock here
  describe '#self.get_results' do
    it 'gets results' do
      results = Github.get_results('emoji-haiku')
      expect(results.first['name'] =~ /emoji/).to_not eq false
    end
  end
end
