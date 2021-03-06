defmodule EctoCheck.Schema do
  defmacro __using__(_) do
    quote do
      use Ecto.Schema
      @primary_key {:id, :binary_id, autogenerate: true}
      @foreign_key_type :binary_id
      @timestamp_opts [type: :naive_datetime_usec]
    end
  end
end
