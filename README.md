# Virtual try-on project.

# TODO

* <s>Train ACGPN</s>
* <s>Read data loader script</s>
* <s>Read test script </s>
* <s>Make reference cloth and person cloth same in dataloader  </s>
* <s>Compute SSIM </s>
* Compute IS 
* Read train script
* Evaluate VITON, CV-VTON and ACGPN (use pretrained models)
* Residual U-Net
* STN [https://github.com/WarBean/tps_stn_pytorch](https://github.com/WarBean/tps_stn_pytorch)

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