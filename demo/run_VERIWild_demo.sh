# python demo/visualize_result.py --config-file logs/old-veriwild/bagtricks_R50-ibn_4gpu/config.yaml \
#  --num-gpus 1 --vis-label --dataset-name 'VeRiWild' --output logs/old-veriwild/bagtricks_R50-ibn_4gpu \
# --opts MODEL.WEIGHTS logs/old-veriwild/bagtricks_R50-ibn_4gpu/model_final.pth

python demo/demo.py --config-file logs/old-veriwild/bagtricks_R50-ibn_4gpu/config.yaml \
 --input pyspark-testing/original_files/*.jpg \
 --output pyspark-testing/from_demosh \
 --opts MODEL.WEIGHTS logs/old-veriwild/bagtricks_R50-ibn_4gpu/model_final.pth

# python demo/demo.py --config-file logs/veri/sbs_R50-ibn/config.yaml \
# --input /data0/veri/image_test/*.jpg \
# --parallel --output logs/veri/custom_inp \
# --opts MODEL.WEIGHTS logs/veri/sbs_R50-ibn/model_final.pth