require 'bookmark'

describe Bookmark do
subject(:Bookmark) { described_class.new }

  describe '#.all' do
    it 'returns all bookmarks' do
      expect(Bookmark.all).to include "google.com"
      expect(Bookmark.all).to include "youtube.com"
      expect(Bookmark.all).to include "facebook.com"
    end
  end
end 
