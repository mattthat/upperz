# upperz

### see

[Frontend Source Code](https://github.com/tadalabs/upperz-frontend)

[Backend Source Code](https://github.com/tadalabs/upperz-backend)


### setup

The following will clone the orchestration repository, build the application image (using the latest front-end and back-end), and compose the image into a container.

```
$ git clone https://github.com/tadalabs/upperz
$ cd upperz
$ npm install
$ npm run build
$ npm run docker-compose:up
```

### use

Once you've setup, browse to http://localhost:8080

![upperz Demo](upperz.gif?raw=true)