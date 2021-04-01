module CategoriesHelper
  def categories_for_select
    Category.all.collect { |c| [c.name, c.id] }
  end

  def other_categories_for_select(cat)
    Category.where('id != ?', cat.id).collect { |c| [c.name, c.id] }
  end
end
