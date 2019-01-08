#!/bin/bash

pandoc -t beamer ./presentation.md -o ./pg-ntk-presentation.pdf
echo "Created pg-ntk-presentation.pdf"
