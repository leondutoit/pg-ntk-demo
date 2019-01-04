
## pg-ntk-demo

Assume the following setup:

```txt
data owners: A, B, C, D, E, F
tables: t1, t2, containing data from all data owners
data users: X, Y, Z
```

Now suppose we need to set up the following access control rules in our DB:

```txt
data users X, and Y should only have access to data in tables t1 and only data from owners A, B, C, D
data user Z should have access to all data - i.e. tables t1, t2
```

That means we need the following groups, and table grants:

```txt
group1
    - members: ((X, Y), (A, B, C, D))
    - select table access grant: (t1)
group2
    - members: ((Z), (A, B, C, D, E, F))
    - select table access grants: (t1, t2)
```
