defmodule ChatApp.NewsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ChatApp.News` context.
  """

  @doc """
  Generate a article.
  """
  def article_fixture(attrs \\ %{}) do
    {:ok, article} =
      attrs
      |> Enum.into(%{
        body: "some body",
        title: "some title"
      })
      |> ChatApp.News.create_article()

    article
  end
end
