defmodule TheBestory.API.UserView do
  use TheBestory.API, :view
  alias TheBestory.API.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      username: user.username,
      reactions_count: user.reactions_count,
      stories_count: user.stories_count,
      comments_count: user.comments_count}
  end
end
