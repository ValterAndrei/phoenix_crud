# User

Import module

```
alias App.Accounts.User
```

1- Update column
```
App.Repo.get_by(App.Accounts.User, id: 1)
|> Ecto.Changeset.change(%{username: "valterandrei", name: "Valter"})
|> App.Repo.update()
```
