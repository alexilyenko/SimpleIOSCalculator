#!/usr/bin/env bash

devices=("platform=iOS Simulator,name=iPhone X,OS=11.0"
 "platform=iOS Simulator,name=iPhone 8,OS=11.0"
 "platform=iOS Simulator,name=iPhone 8 Plus,OS=11.0")

test_scheme_name='SimpleCalculatorUITests'
for (( i=0; i<${#devices[@]}; i++ ));
do
  devices[$i]="xcodebuild
   -scheme $test_scheme_name
   -destination '"${devices[$i]}"'"
done

i=0
path_to_test_classes='SimpleCalculatorUITests/PageObject/Tests'
for entry in "$path_to_test_classes"/*Test.swift
do
  if (( i == ${#devices[@]} )); then
    i=0
  fi
  name="${entry##*/}"
  name="${name%.*}"
  devices[$i]=${devices[$i]}"
   -only-testing:$test_scheme_name/$name"
  ((i++))
done

cmd=''
for (( i=0; i<${#devices[@]}; i++ ));
do
  cmd=$cmd${devices[$i]}" test & "
done

echo $cmd
eval $cmd