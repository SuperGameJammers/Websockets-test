ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PlayDoh.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PlayDoh.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PlayDoh.Repo)

