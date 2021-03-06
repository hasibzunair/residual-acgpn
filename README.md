# Improving photo-realistic virtual try-on using residual networks

A course project for COMP 6321 Machine Learning, Fall 2021.

<p align="center">
    <a href="#"><img src="./media/vis.png"></a> <br/>
    <em>
    Figure 1. Comparing the proposed method with other recent try-on methods.
    </em>
</p>

Colab demo is available at https://github.com/hasibzunair/residual-acgpn-demo.

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

## Clone this repo

```sh
git clone https://github.com/hasibzunair/residual-acgpn
cd residual-acgpn
```

## Data
    
Get the training and test datasets from https://github.com/switchablenorms/DeepFashion_Try_On. Make a folder named `datasets/acgpn_data` and put them there. Data directory tree will look like:

```
datasets/
    acgpn_data/
        try_on_training/
        try_on_testing/
```
    
## Train Residual ACGPN

Download [vgg19-dcbb9e9d.pth](https://github.com/hasibzunair/residual-acgpn/releases/download/tag/v0.1/vgg19-dcbb9e9d.pth) and keep it in `train_src/models` folder. Then go to `train_src` and run:

```sh
python train.py --name resacgpn
```
This will create a folder `resacgpn` inside `checkpoints` and store the model files there.

## Pretrained model

We train Residual ACGPN and make the weights available. Download them by clicking [here](https://github.com/hasibzunair/residual-acgpn-demo/releases/download/v1.0/resacgpn.zip). Unzip the file. Make a folder `checkpoints` in `train_src` and put the file there.
    
## Test model
First copy all the text files in [test_src/viton_files](test_src/viton_files) to `datasets/acgpn_data/try_on_training/`. Then, open [test-res-acgpn.ipynb](test_src/notebooks/test-res-acgpn.ipynb) run all cells. The notebook runs inference on VITON test set as well as computes SSIM and FID scores for the final evaluation.


## Acknowledgement
This work is built on top of CVPR 2020 paper *Towards Photo-Realistic Virtual Try-On by Adaptively
Generating???Preserving Image Content* ([Paper](https://arxiv.org/pdf/2003.05863.pdf), [Code](https://github.com/switchablenorms/DeepFashion_Try_On)).

## Reference
* SSIM and FID scores computed using [https://github.com/Po-Hsun-Su/pytorch-ssim](https://github.com/Po-Hsun-Su/pytorch-ssim) and [https://github.com/mseitzer/pytorch-fid](https://github.com/mseitzer/pytorch-fid)
