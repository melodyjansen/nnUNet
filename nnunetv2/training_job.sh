#!/bin/bash
#SBATCH --partition=csedu
#SBATCH --account=cseduIMC037
#SBATCH --nodelist=cn78
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=8
#SBATCH --mem=24G
#SBATCH --time=9:00:00
#SBATCH --output=logs/train-%j.out
#SBATCH --error=logs/train-%j.err

# Activate your virtual environment
source /scratch/fvewijk/venv/nnunet_env/bin/activate
export nnUNet_raw="nnUNet_raw"
export nnUNet_preprocessed="nnUNet_preprocessed"
export nnUNet_results="nnUNet_results"

# Start training: adjust these values to match your use case
nnUNetv2_train 100 3d_fullres 0
