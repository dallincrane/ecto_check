defmodule EctoCheck.Factory do
  @moduledoc false
  use ExMachina.Ecto, repo: EctoCheck.Repo

  alias EctoCheck.{Product, ProductTag, Tag}

  def product_factory do
    %Product{
      name: sequence("name-")
    }
  end

  def product_tag_factory do
    %ProductTag{
      product: build(:product),
      tag: build(:tag)
    }
  end

  def tag_factory do
    %Tag{
      name: sequence("name-")
    }
  end
end
