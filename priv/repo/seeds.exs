alias Instacat.{Posts, Repo}

cat_photos = [
  "https://images.pexels.com/photos/416160/pexels-photo-416160.jpeg?cs=srgb&dl=animal-cat-face-close-up-416160.jpg&fm=jpg",
  "https://images.pexels.com/photos/127028/pexels-photo-127028.jpeg?cs=srgb&dl=adorable-animal-cat-127028.jpg&fm=jpg",
  "https://images.pexels.com/photos/126407/pexels-photo-126407.jpeg?cs=srgb&dl=animal-cat-cute-126407.jpg&fm=jpg",
  "https://cdn.pixabay.com/photo/2018/04/16/07/01/cat-3323772_1280.jpg",
  "https://cdn.pixabay.com/photo/2018/04/13/20/13/animal-3317421_1280.jpg",
  "https://images.pexels.com/photos/35888/amazing-beautiful-breathtaking-clouds.jpg?cs=srgb&dl=animal-branch-cat-35888.jpg&fm=jpg"
]


for cat_link <- cat_photos do
  photo = %{
    image_url: cat_link,
    caption: Faker.Lorem.sentence(%Range{first: 1, last: 10})
  }

  %Posts.Photo{}
  |> Posts.Photo.changeset(photo)
  |> Repo.insert!
end
