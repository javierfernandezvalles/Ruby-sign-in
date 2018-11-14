module PagesHelper
  def no_posts_partial_path(posts)
    posts.empty? ? 'posts/shared/no_posts' : 'shared/empty_partial'
  end
end
