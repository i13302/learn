# Learing Experiment As Running contaiNer


## Usage 
```
docker pull ghcr.io/i13302/learn/superml:latest
docker run -it --rm --publish 8888:8888 --volume $(pwd)/work:/home/jovyan/work/ ghcr.io/i13302/learn/superml:latest
```

Access to [http://127.0.0.1:8888](http://127.0.0.1:8888) in your browser.
By the way, you are AI engineer too !


### Local Build
```
docker build . -t superml
```


## Who needs this ?

## Branch Rule


## License
Apache License.  
This is [LICENSE](LICENSE) file.

## Member

## Install Library List

Dockerfile build Actions Status: <img src='https://img.shields.io/github/workflow/status/i13302/learn/push_image/main'>
