query example :

```
curl -X POST http://localhost:8080/api/v1/graphql   -H "Content-Type: application/json"   -d '{"query": "query { productsofpublic { id name } usersofprivate { id email } }"}'
```
default :

```
curl -X POST http://localhost:8080/api/v1/graphql   -H "Content-Type: application/json"   -d '{"query": "mutation { products(insert: { name: \"Sample Product\", price: 19.99 }) { id name price } }"}'
```

with schema mentioned :

```
curl -X POST http://localhost:8080/api/v1/graphql   -H "Content-Type: application/json"   -d '{"query": "mutation { usersofprivate(insert: { email: \"user@example.com\", assword: \"haha\" }) { id email } }"}'
```
