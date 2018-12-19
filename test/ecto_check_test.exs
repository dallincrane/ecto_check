defmodule EctoCheckTest do
  use ExUnit.Case

  alias EctoCheck.{Factory, Repo}
  alias EctoCheck.{Product, ProductTag, Tag}

  test "properly loads has_many_through associations without primary keys" do
    product = Factory.insert(:product)
    tag1 = Factory.insert(:tag)
    tag2 = Factory.insert(:tag)
    Repo.insert!(%ProductTag{product_id: product.id, tag_id: tag1.id})
    Repo.insert!(%ProductTag{product_id: product.id, tag_id: tag2.id})

    result = Product |> Repo.get(product.id) |> Repo.preload(:tags)

    assert [%ProductTag{tag: %Tag{}}, %ProductTag{tag: %Tag{}}] = result.products_tags
    assert [%Tag{}, %Tag{}] = result.tags
  end
end
