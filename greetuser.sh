#!/bin/bash

greet=Hello
user=$(whoami)
today=$(date +%A)

echo -n "$greet $user. Welcome back!"
echo "Today is $today and a great day to learn. Bye"
