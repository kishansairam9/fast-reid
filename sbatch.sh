#!/bin/bash
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 40
#SBATCH --gres=gpu:4
#SBATCH --mem-per-cpu=2048
#SBATCH --time=1-12:00:00
#SBATCH --mail-type=END

source .env
$LOAD
WORK_DIR="/ssd_scratch/cvit/$USER/"

if ! [[ -d $WORK_DIR/VERI-Wild ]]; then
    rsync -az ada:/share1/dataset/VERI-Wild/Veri-Wild_new.tar $WORK_DIR --info=progress2
    tar -xf $WORK_DIR/Veri-Wild_new.tar -C $WORK_DIR
fi

ulimit -c 0

pipenv run python3 tools/train_net.py --config-file ./configs/VERIWild/bagtricks_R50-ibn.yml --num-gpus 4

