# TODO list command line tool

## Usage

```
% todo ls
ID  name  tag
% todo add A B
% todo add L B
% todo add abcdefg M
% todo ls           
ID  name     tag
0   A        B
1   L        B
2   abcdefg  M
% todo
todo usage:
  add: adds one task to the todo list. usage: todo add <name> <tag>
  clear: clears the todo list. usage: todo clear
  rm: removes one task from the todo list. usage: todo rm <ID>
  ls: lists everything in the todo list. usage: todo ls
% todo rm 1
% todo ls
ID  name     tag
0   A        B
1   abcdefg  M
% todo add askdfnewoifoewifjf asidd
% todo add askdfnewodsofioiwf B    
% todo add askdfnewodsofioiwf M
% todo add askdfnewodsofi weoirweoif 
% todo ls
ID  name                tag
0   A                   B
1   askdfnewodsofioiwf  B
2   abcdefg             M
3   askdfnewodsofioiwf  M
4   askdfnewoifoewifjf  asidd
5   askdfnewodsofi      weoirweoif
% todo clear
% todo ls
ID  name  tag
% 
```

## Install
To install, simply download the source, go to the todo dir. And run:
```
cmake .
make
install todo /usr/local/bin (or your binary dir)
```