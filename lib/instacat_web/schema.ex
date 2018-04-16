defmodule InstacatWeb.Schema do
  use Absinthe.Schema

  alias InstacatWeb.Resolvers

  import_types __MODULE__.PostsTypes

  query do
    @desc "Gets list of photos"
    field :photos, list_of(:photo) do
      resolve &Resolvers.Posts.photos/3
    end
  end
end
