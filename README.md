# Virtual try-on project.

# TODO

* <s>Train ACGPN</s>
* Read train script
* Read test script
* Compute IS and SSIM

# Train model
`python train.py --name experiment_name`

Copy checkpoint folder `experiment_name` to ACGPN_inference

# Run inference
`python test.py --load_pretrain ./checkpoints/experiment_name`

# Reference
[https://github.com/switchablenorms/DeepFashion_Try_On](https://github.com/switchablenorms/DeepFashion_Try_On)