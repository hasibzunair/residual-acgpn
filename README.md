# Virtual try-on project.

# Train model
`python train.py --name experiment_name`

Copy checkpoint folder `experiment_name` to ACGPN_inference

# Run inference
python test.py --load_pretrain ./checkpoints/experiment_name
