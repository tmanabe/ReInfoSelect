CUDA_VISIBLE_DEVICES=0 \
python main.py \
        -mode infer \
        -model bert \
        -max_input 1280000 \
        -pretrain bert-base-uncased \
        -checkpoint ../checkpoints/reinfoselect_bert.bin \
        -dev ../data/dev_toy.tsv \
        -embed ../data/glove.6B.300d.txt \
        -vocab_size 400002 \
        -embed_dim 300 \
        -res_trec ../results/bert.trec \
        -res_json ../results/bert.json \
        -res_feature ../features/bert_features \
        -gamma 0.99 \
        -T 1 \
        -n_kernels 21 \
        -max_query_len 20 \
        -max_seq_len 128 \
        -epoch 1 \
        -batch_size 32
