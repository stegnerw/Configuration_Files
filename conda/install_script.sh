#!/bin/bash

# Get script directory
BASE_DIR=$(realpath $(dirname "$0"))

# Pull down installer script and run it
echo "Do you want to download and install conda?"
select ans in "Yes" "No"; do
  case $ans in
    Yes)
      wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O $BASE_DIR/conda_tmp.sh
      chmod u+x $BASE_DIR/conda_tmp.sh
      $BASE_DIR/conda_tmp.sh -u
      rm $BASE_DIR/conda_tmp.sh
      break
      ;;
    No)
      break
      ;;
  esac
done

# Create symlink
ln -sf $BASE_DIR/condarc $HOME/.condarc

exit 0

