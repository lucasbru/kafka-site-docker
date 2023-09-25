This repository contains a tiny Dockerfile to be able to test changes to the kafka-site locally.

To run the docker container, use something like the following (assumes that kafka-site repository is in `../kafka-site`).

```
docker build -t kafka-site:v1 .
docker run -it -v $(pwd)/../kafka-site:/usr/local/apache2/htdocs/ -p 80:80 kafka-site:v1
```

Then, the site should render at `localhost:80`.

