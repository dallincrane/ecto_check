defmodule EctoCheck.Product do
  use EctoCheck.Schema

  alias EctoCheck.ProductTag

  schema "products" do
    field(:name, :string)
    has_many(:products_tags, ProductTag)
    has_many(:tags, through: [:products_tags, :tag])
    timestamps()
  end
end
