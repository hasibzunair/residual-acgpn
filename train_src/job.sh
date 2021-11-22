#!/bin/bash

# Specify account
#SBATCH --account=def-abhamza

# Specify nodes
#SBATCH --nodes=1
#SBATCH --gres=gpu:v100:8 # 8
#SBATCH --cpus-per-task=24 # 24
#SBATCH --mem=16G

# Specify time
# time (DD-HH:MM)

# Run for a day
#SBATCH --time=5-00:00 

# NOT USING THIS
# Run less than a day
# SBATCH --time=0-03:00 

# Slurm output file
#SBATCH --output=output.out

# Setup working environment
module load python/3.7
module load scipy-stack

virtualenv --no-download $SLURM_TMPDIR/env
source $SLURM_TMPDIR/env/bin/activate

pip install --no-index --upgrade pip
pip install numpy --no-index
pip install --no-index torch
pip install --no-index torch torchvision torchtext torchaudio

pip install ipdb
pip install opencv-python
pip install tensorboardX

# Activate env from folder
# source /home/hasib/projects/def-abhamza/hasib/ENVS/tryon/bin/activate

# Load CUDA and see GPUs
#module load arch/avx512 StdEnv/2018.3
module load cuda cudnn
nvidia-smi

# Run test script
python ./train.py  --name resunet_g1 --gpu_ids 0,1,2,3,4,5,6,7 --batchSize 8

# See GPU usage in job
# sq -i 5
# srun --jobid 123456 --pty watch -n 30 nvidia-smi
# https://github.com/hasibzunair/residual-acgpn/tree/graham