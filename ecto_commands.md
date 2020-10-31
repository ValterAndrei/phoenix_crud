# User

Import modules

```
alias App.Repo
alias App.Accounts.User
import Ecto.Query
```

1. Create
```
%User{} |> User.changeset(%{username: "valterandrei", name: "Valter"}) |> Repo.insert()

# Sem verificação de changeset
%User{} |> Ecto.Changeset.change(%{username: "valterandrei", name: "Valter"}) |> Repo.insert()
```

2. Update
```
User |> Repo.get_by(id: 1) |> User.changeset(%{username: "valterandrei", name: "Black Panther"}) |> Repo.update()

# Sem verificação de changeset
User |> Repo.get_by(id: 1) |> Ecto.Changeset.change(%{username: "valterandrei", name: "Valter Andrei"}) |> Repo.update()
```

3. Delete
```
User |> Repo.get_by(id: 1) |> Repo.delete()

# Delete last record
User |> Repo.all() |> List.last |> Repo.delete()
```

4. Get the first/last record
```
# First
Repo.one(from x in User, limit: 1)

# Last
Repo.one(from x in User, order_by: [desc: x.id], limit: 1)
```

5. Get by username
```
Repo.all(from u in "users", where: ilike(u.username, "valterandrei"), select: {u.name, u.username})
```
