export CUDA_VISIBLE_DEVICES=0
python -u run.py --is_training 0 --root_path ./dataset/ETT-small/ --data_path ETTh1.csv --task_id ETTh1 --model MyModel --data ETTh1 --features S --seq_len 96 --label_len 48 --pred_len 720 --e_layers 2 --d_layers 1 --factor 3 --enc_in 1 --dec_in 1 --c_out 1 --des 'Exp' --d_model 512 --itr 3

#cd ..

for model in FEDformer
do

# ETTh1
python -u run.py \
  --is_training 0 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTh1.csv \
  --task_id ETTh1 \
  --model $model \
  --data ETTh1 \
  --features S \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --d_model 512 \
  --itr 3

done

