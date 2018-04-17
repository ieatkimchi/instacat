defmodule InstacatWeb.Resolvers.Posts do
  def photos(_, _, _) do
    {:ok, Instacat.Posts.list_photos}
  end

  def photo(_, %{id: id}, _) do
    {:ok, Instacat.Posts.get_photo!(id)}
  end
end
