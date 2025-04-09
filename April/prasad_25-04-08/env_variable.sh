#!/bin/bash
echo "export env_var=prod" >> ~/.bashrc
source ~/.bashrc
echo "env var set: $env_var"
