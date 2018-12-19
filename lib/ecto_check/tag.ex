defmodule EctoCheck.Tag do
  use EctoCheck.Schema

  alias EctoCheck.ProductTag

  schema "tags" do
    field(:name, :string)
    has_many(:products_tags, ProductTag)
    has_many(:products, through: [:products_tags, :product])
    timestamps()
  end
end
