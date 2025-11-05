#!/bin/bash

colors=(red green blue)

colors[3]=yellow

colors[4]=purple

unset colors[1]  # To remove array elements

echo "${colors[@]}"
