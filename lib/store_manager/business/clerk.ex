defmodule StoreManager.Business.Clerk do
  use Ecto.Schema
  import Ecto.Changeset

  schema "clerks" do
    field :first_name, :string
    field :last_name, :string
    belongs_to :store, Store, references: :store_id

    timestamps()
  end

  @doc false
  def changeset(clerk, attrs) do
    clerk
    |> cast(attrs, [:first_name, :last_name, :store_id])
    |> validate_required([:first_name, :last_name, :store_id])
  end
end
