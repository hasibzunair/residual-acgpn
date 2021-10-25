# Virtual try-on project.

# TODO

* Read train script
* Residual U-Net, https://github.com/nikhilroxtomar/Semantic-Segmentation-Architecture
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
* [https://github.com/switchablenorms/DeepFashion_Try_On](https://github.com/switchablenorms/DeepFashion_Try_On)
* [Towards Photo-Realistic Virtual Try-On by Adaptively
Generating↔Preserving Image Content](https://arxiv.org/pdf/2003.05863.pdf)
* [VITON: An Image-based Virtual Try-on Network](https://openaccess.thecvf.com/content_cvpr_2018/papers/Han_VITON_An_Image-Based_CVPR_2018_paper.pdf)
* FID score computed using [https://github.com/mseitzer/pytorch-fid](https://github.com/mseitzer/pytorch-fid)
* SSIM score computed using [https://github.com/Po-Hsun-Su/pytorch-ssim](https://github.com/Po-Hsun-Su/pytorch-ssim)