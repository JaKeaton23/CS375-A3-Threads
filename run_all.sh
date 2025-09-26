#!/bin/bash
set -e

# Compile with correct file names
gcc hello.c   -o hello   -lpthread
gcc Heap.c    -o Heap    -lpthread
gcc Join.c    -o Join    -lpthread
gcc Stack.c   -o Stack   -lpthread
gcc Threads.c -o Threads -lpthread

# Run and capture output
{
  echo "===== Running hello.c ====="
  ./hello
  echo

  echo "===== Running Heap.c ====="
  ./Heap
  echo

  echo "===== Running Join.c ====="
  ./Join
  echo

  echo "===== Running Stack.c ====="
  ./Stack
  echo

  echo "===== Running Threads.c ====="
  ./Threads
  echo
} | tee results.txt

