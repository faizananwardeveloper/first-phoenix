defmodule ChatApp.BlogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ChatApp.Blog` context.
  """

  @doc """
  Generate a comment.
  """
  def comment_fixture(attrs \\ %{}) do
    {:ok, comment} =
      attrs
      |> Enum.into(%{
        body: "some body"
      })
      |> ChatApp.Blog.create_comment()

    comment
  end
end
