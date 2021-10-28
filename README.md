# COMP 6321 Project

This code is built on top of Towards Photo-Realistic Virtual Try-On by Adaptively
Generating↔Preserving Image Content ([Paper](https://arxiv.org/pdf/2003.05863.pdf), [Code](https://github.com/switchablenorms/DeepFashion_Try_On))

# TODO
* Evaluate on random cloths data
* Read train script
* STN [https://github.com/WarBean/tps_stn_pytorch](https://github.com/WarBean/tps_stn_pytorch)
* Evaluate VITON, CV-VTON and ACGPN (use pretrained models)

# Train model
`python train.py --name experiment_name`

Copy checkpoint folder `experiment_name` to ACGPN_inference

# Run inference
`python test.py --load_pretrain ./checkpoints/experiment_name`

# Compute FID
Install using `pip install pytorch-fid`.
Run `python -m pytorch_fid path/to/dataset1 path/to/dataset2` to get FID scores.

# Reference
* SSIM and FID scores computed using [https://github.com/Po-Hsun-Su/pytorch-ssim](https://github.com/Po-Hsun-Su/pytorch-ssim) and [https://github.com/mseitzer/pytorch-fid](https://github.com/mseitzer/pytorch-fid)
