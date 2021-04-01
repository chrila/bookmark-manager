module BookmarkTypesHelper
  def bookmark_cnt_per_type
    hash = Bookmark.group(:bookmark_type).count
    keys = hash.keys.map(&:name)
    [keys, hash.values].transpose.to_h
  end

  def bookmark_types_for_select
    BookmarkType.all.collect { |t| [t.name, t.id] }
  end
end
