# axelerate

Image Recognition With K210 Boards and Arduino IDE/Micropython
- https://www.instructables.com/Transfer-Learning-With-Sipeed-MaiX-and-Arduino-IDE/

## Build image

get dataset from:
- https://drive.google.com/open?id=1JgTLIERX9AFoiGF_2ST2_hzKoo0grEkp

build image
```
$ docker build . -t axelerate
```
run container
```
$ docker run -it --rm axelerate
```
## santa_uno
```
$ python3 axelerate/train.py -c configs/santa_uno.json
$ ls projects/santa_uno_classifier/yyy-MM-dd_HH-mm-ss/classifier_best_loss.kmodel
$ cat projects/santa_uno_classifier/labels.txt
```
