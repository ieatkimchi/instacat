defmodule InstacatWeb.Resolvers.Posts do
  def photos(_, _, _) do
    {:ok, Instacat.Posts.list_photos}
  end
end
