defmodule StoreManager.BusinessFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `StoreManager.Business` context.
  """

  @doc """
  Generate a company.
  """
  def company_fixture(attrs \\ %{}) do
    {:ok, company} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> StoreManager.Business.create_company()

    company
  end

  @doc """
  Generate a store.
  """
  def store_fixture(attrs \\ %{}) do
    {:ok, store} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> StoreManager.Business.create_store()

    store
  end
end
