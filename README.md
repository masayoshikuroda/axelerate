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
$ docker run -it --rm --name axelerate axelerate:latest
```
## santa_uno
```
# cd /root/aXeleRate/
# python3 axelerate/train.py -c configs/santa_uno.json
# cd projects
# zip -r santa_uno_classifier.zip santa_uno_classifier/

% docker cp axelerate:/root/aXeleRate/projects/santa_uno_classifier.zip .
% unzip santa_uno_classifier.zip 
% ls santa_uno_classifier/yyy-MM-dd_HH-mm-ss/classifier_best_loss.kmodel
% cat santa_uno_classifier/labels.txt
```
