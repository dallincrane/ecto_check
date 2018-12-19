defmodule EctoCheck.Repo.Migrations.CreateProductsTags do
  use Ecto.Migration

  def change do
    create table("products_tags", primary_key: false) do
      add(:product_id, references("products", on_delete: :delete_all, type: :binary_id), null: false)
      add(:tag_id, references("tags", on_delete: :delete_all, type: :binary_id), null: false)
    end

    create(unique_index("products_tags", [:product_id, :tag_id]))
  end
end
