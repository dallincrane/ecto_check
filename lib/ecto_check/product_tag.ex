defmodule EctoCheck.ProductTag do
  use EctoCheck.Schema

  alias EctoCheck.{Product, Tag}

  @primary_key false
  schema "products_tags" do
    belongs_to(:product, Product)
    belongs_to(:tag, Tag)
  end
end
