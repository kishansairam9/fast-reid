python demo/visualize_result.py --config-file logs/veri/sbs_R50-ibn/config.yaml \
--parallel --vis-label --dataset-name 'VeRi' --output logs/veri/mod_vid \
--opts MODEL.WEIGHTS logs/veri/sbs_R50-ibn/model_final.pth

# python demo/demo.py --config-file logs/veri/sbs_R50-ibn/config.yaml \
# --input /data0/veri/image_test/*.jpg \
# --parallel --output logs/veri/custom_inp \
# --opts MODEL.WEIGHTS logs/veri/sbs_R50-ibn/model_final.pth
