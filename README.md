# upperz

### setup

```

$ git clone https://github.com/tadalabs/upperz
$ cd upperz
$ npm install
$ npm run build
$ npm run docker-compose:up

```

### testing

```
$ curl -s http://localhost:8080/ | jq
  {
    "status": "OK"
  }
```

### use

Browse to http://localhost:3000

![upperz Demo](upperz.gif?raw=true "upperz")