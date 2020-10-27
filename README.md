# Learing Experiment As Running contaiNer


## Usage 
```
docker pull ghcr.io/i13302/learn/superml:latest
```

### Terminal on Linux,Mac
```
docker run -it --rm --publish 8888:8888 --volume $(pwd)/work:/home/jovyan/work/ ghcr.io/i13302/learn/superml:latest
``` 

### Powershell on Windows
```
docker run -it --rm --publish 8888:8888 --volume ${PWD}/work:/home/jovyan/work/ ghcr.io/i13302/learn/superml:latest
```

In `work` directory of current directory in host machine with In `work` directory of `/home/jovyan/work` in container (top directory on jupyter) are synceing files.  
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
- [@i13302](https://github.com/i13302)
- [@unomitsu](https://github.com/unomitsu)
- [@gacky35](https://github.com/gacky35)

## Install Library List

Dockerfile build Actions Status: <img src='https://img.shields.io/github/workflow/status/i13302/learn/push_image/main'>
