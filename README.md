# Photo-realistic virtual try-on using Residual ACGPN

A course project for COMP 6321 Machine Learning, Fall 2021.

This work is built on top of CVPR 2020 paper *Towards Photo-Realistic Virtual Try-On by Adaptively
Generating↔Preserving Image Content* ([Paper](https://arxiv.org/pdf/2003.05863.pdf), [Code](https://github.com/switchablenorms/DeepFashion_Try_On)).

A colab demo is available at https://github.com/hasibzunair/residual-acgpn-demo. Project report is available [here](WILL_BE_ADDED).

## Make environment
Python >= 3.8.0 required. Run commands below to make your environment.
```
conda create --name comp6321 python=3.8
conda activate comp6381
conda install pytorch torchvision torchaudio cudatoolkit=11.1 -c pytorch-lts -c nvidia
conda install -c conda-forge jupyterlab
pip install opencv-python, matplotlib, sklearn, tqdm, pycocotools, tensorboard
```
OR run `conda env create -f <environment-name>.yml`.

## Data
    
Get the training and test datasets from https://github.com/switchablenorms/DeepFashion_Try_On. Make a folder named `datasets/acgpn_data` and put them there. Data directory tree will look like:

```
datasets/
--------acgpn_data/
-------------------try_on_training/
-------------------try_on_testing/
```
    
## Train Residual ACGPN

Download [vgg19-dcbb9e9d.pth](https://github.com/hasibzunair/residual-acgpn/releases/download/tag/v0.1/vgg19-dcbb9e9d.pth) and keep it in `train_src/models` folder. Then go to `train_src` and run:

```sh
python train.py --name res-acgpn
```
    
## Test model
Go to `test_src` and run:
```sh
python test.py --load_pretrain ./checkpoints/res-acgpn
```

## Reference
* SSIM and FID scores computed using [https://github.com/Po-Hsun-Su/pytorch-ssim](https://github.com/Po-Hsun-Su/pytorch-ssim) and [https://github.com/mseitzer/pytorch-fid](https://github.com/mseitzer/pytorch-fid)
