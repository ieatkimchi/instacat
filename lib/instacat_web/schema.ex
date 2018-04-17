defmodule InstacatWeb.Schema do
  use Absinthe.Schema

  alias InstacatWeb.Resolvers

  import_types __MODULE__.PostsTypes

  query do
    @desc "Gets list of photos"
    field :photos, list_of(:photo) do
      resolve &Resolvers.Posts.photos/3
    end

    @desc "Gets a photo"
    field :photo, :photo do
      arg :id, non_null(:id)
      resolve &Resolvers.Posts.photo/3
    end
  end
end
