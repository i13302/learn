# Learing Experiment As Running contaiNer
![build](https://img.shields.io/github/workflow/status/i13302/learn/push_image/main)
![last-commit](https://img.shields.io/github/last-commit/i13302/learn)

## Motivation
This project is developed by whom are working at teaching assistant that is teach AI (Artificial Intelligence) in experimence class.   
AI relating libraries are large and many , so installing their're not finished  in class time, and  futher, their install process are complex.  
Therefore, we have to work suppotting install proccess at "service overtime" without pay.   
Thus we have developed easier install process.  
This Container is installed many AI relating libraries, by using Docker is  easy introduce.  
Many students aren't to need worrying about install process, what you need is all in this container.  
We contained simple sample program. So, you can immediately validation.
We named "LEARN", want that many learning students in experimence class used.  

## Who needs this ?
- Beginner AI enginner
- Who want an easier installion

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

## Branch Rule
Git-Flow.
```
master
  |- develop
     |- future/* 
```

## License
Apache License.  
This is [LICENSE](LICENSE) file.

## Member
- [@i13302](https://github.com/i13302)
- [@unomitsu](https://github.com/unomitsu)
- [@gacky35](https://github.com/gacky35)

## Install Library List

### Calculation
- numpy
- pandas

### Visualization
- matplotlib
- seaborn
- graphviz

### Model
- scikit-learn
- tensorflow
D
### visualization
