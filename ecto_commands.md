# User

Import modules

```
alias App.Repo
alias App.Accounts.User
```

1. Create
```
%User{} |> User.changeset(%{username: "valterandrei", name: "Valter"}) |> Repo.insert()
```

2. Update
```
User |> Repo.get_by(id: 1)
|> Ecto.Changeset.change(%{username: "valterandrei", name: "Valter Andrei"})
|> App.Repo.update()
```

3. Delete
User |> Repo.get_by(id: 1) |> Repo.delete()
