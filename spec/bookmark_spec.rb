require 'bookmark'

describe Bookmark do
subject(:Bookmark) { described_class.new }

  describe '#.all' do
    it 'returns all bookmarks' do
      expect(Bookmark.all).to include "http://www.google.com"
      expect(Bookmark.all).to include "http://www.destroyallsoftware.com"
      expect(Bookmark.all).to include "http://www.makersacademy.com"
    end
  end
end
