query example :

```
curl -X POST http://localhost:8080/api/v1/graphql   -H "Content-Type: application/json"   -d '{"query": "query { productsofpublic { id name } usersofprivate { id email } }"}'
```
```
{"data":{"usersofprivate":[{"id":4,"email":"user@example.com"},{"id":5,"email":"user@example.com"}],"productsofpublic":[{"id":1,"name":"Sample Product"},{"id":2,"name":"Sample Product"}]}}
```

default :

```
curl -X POST http://localhost:8080/api/v1/graphql   -H "Content-Type: application/json"   -d '{"query": "mutation { products(insert: { name: \"Sample Product\", price: 19.99 }) { id name price } }"}'
```
```
{"data":{"products":[{"id":3,"name":"Sample Product","price":19.99}]}}
```

with schema mentioned :

```
curl -X POST http://localhost:8080/api/v1/graphql   -H "Content-Type: application/json"   -d '{"query": "mutation { usersofprivate(insert: { email: \"user@example.com\", assword: \"haha\" }) { id email } }"}'
```
```
{"data":{"usersofprivate":[{"id":6,"email":"user@example.com"}]}}
```

if schema is not in the allowed list :

```
curl -X POST http://localhost:8080/api/v1/graphql \
  -H "Content-Type: application/json" \
  -d '{"query": "mutation { outlierofout(insert: { id: 1, text: \"this is an outlier example\" }) { id text } }"}'
```

```
{"errors":[{"message":"schema 'out' not allowed"}]}
```