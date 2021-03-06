#!/usr/bin/env bash
# Usage:
# bash baselines/multimodal_transformer/scripts/build_vocab.sh

export DIR_PWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export PYTHONPATH="$PYTHONPATH:$DIR_PWD"
echo $PYTHONPATH


train_data_path=data/tvc_train_release.jsonl

python baselines/multimodal_transformer/build_vocab.py \
--train_path ${train_data_path} \
--dset_name tvc \
--cache ./cache \
--min_word_count 5 \
