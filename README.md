# Promela
FAST tutorial on #promela number 1: HELLO_WORLD
1) you install spin on your linux (for linux users) using this:
sudo apt install spin
2) you check your spin works using this:
spin -h
3) you have a C language interpreter on your system
4) you create a file test.pml
5) You write in it your first helloworld like this:

active proctype main()
{
  printf("Hello world\n")
}

6) you run ~$>spin test.pml
7) you get message in your console:
      Hello world
1 process created


NOTE: word "main" is not a keyword but a name of a process you create
