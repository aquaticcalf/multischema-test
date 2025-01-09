query example :

```
query { productsofpublic { id name } usersofprivate { id email } }
```
```
{"data":{"usersofprivate":[{"id":4,"email":"user@example.com"},{"id":5,"email":"user@example.com"}],"productsofpublic":[{"id":1,"name":"Sample Product"},{"id":2,"name":"Sample Product"}]}}
```

default :

```
mutation { products(insert: { name: \"Sample Product\", price: 19.99 }) { id name price } }
```
```
{"data":{"products":[{"id":3,"name":"Sample Product","price":19.99}]}}
```

with schema mentioned :

```
mutation { usersofprivate(insert: { email: \"user@example.com\", assword: \"haha\" }) { id email } }
```
```
{"data":{"usersofprivate":[{"id":6,"email":"user@example.com"}]}}
```

if schema is not in the allowed list :

```
mutation { outlierofout(insert: { id: 1, text: \"this is an outlier example\" }) { id text } }
```

```
{"errors":[{"message":"schema 'out' not allowed"}]}
```


## db - hcl - atlas `migrate`

```
atlas schema apply -u "postgres://postgres:postgres@localhost:5432/postgres" --to file://schema.hcl --dev-url "docker://postgres/15"
```
