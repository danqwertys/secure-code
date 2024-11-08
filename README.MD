# HOW TO BUILD
```bash
cp .dockerenv.example .dockerenv
# Change the content of .dockerenv to your current IP of the backend, the backend always use port 1337
# Just change the IP Address
docker compose up -d --force-recreate --build
```
# Vulnerability 1 SQL Injection
## SQL Injection pada Fitur Pencarian Product (UNION SQL INjection) 
### Jangan ada Munculin Error
```bash
# http://localhost:1337/product/search?name=handphone
# Request
{
    "name": "Handphone"
}
# Response
{
    "product_id": "12",
    "product_name": "Iphone",
    "product_description": "This is Iphone",
    "product_owner": "muhammad.muis@gdn-commerce.com"
}

```

# Vulnerability 2 XSS
## XSS Pada fitur penambahan produk lalu XSS akan ke trigger ketika search product 
```bash
# http://localhost:1337/product/add
# Request
{
    "product_id": "12",
    "product_name": "Iphone",
    "product_description": "This is Iphone",
    "product_owner": "muhammad.muis@gdn-commerce.com"
}

# Response
{
    "message" : "Product Created"
}
```

# Vulnerability 3 Insecure Direct Object References (IDOR) 
## Asumsi disini kita akan selalu login sebagai muhammad.muis@gdn-commerce.com dengan product_owner=muhammad.muis@gdn-commerce.com
## path / dan /search perlu ditambahkan lagi di querynya AND product_owner=muhammad.muis@gdn-commerce.com
## Disini perlu ditambahkan path /product/{product_id}, kita tambahkan sebuah secret Product pada product_id=1

```bash
# http://localhost:1337/product/3
# Request

# Response
{
    "product_id": "3",
    "product_name": "Iphone",
    "product_description": "This is Iphone",
    "product_owner": "muhammad.muis@gdn-commerce.com"
}
```

