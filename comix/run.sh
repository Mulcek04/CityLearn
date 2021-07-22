tmax=175200
export CUDA_VISIBLE_DEVICES=0 && python src/main.py --config=facmaddpg --env-config=citylearn with t_max=$tmax seed=1 n_train=2 > logs/1-facmaddpg.log 2>&1 &
export CUDA_VISIBLE_DEVICES=1 && python src/main.py --config=maddpg    --env-config=citylearn with t_max=$tmax seed=1 n_train=2 > logs/1-maddpg.log    2>&1 &
#export CUDA_VISIBLE_DEVICES=2 && python src/main.py --config=iql-cem   --env-config=citylearn with t_max=$tmax seed=1 n_train=2 > logs/1-iql-cem.log   2>&1 &
#export CUDA_VISIBLE_DEVICES=3 && python src/main.py --config=iql-naf   --env-config=citylearn with t_max=$tmax seed=1 n_train=2 > logs/1-iql-naf.log   2>&1 &
export CUDA_VISIBLE_DEVICES=2 && python src/main.py --config=comix     --env-config=citylearn with t_max=$tmax seed=1 n_train=2 > logs/1-comix.log     2>&1 &
export CUDA_VISIBLE_DEVICES=3 && python src/main.py --config=comix-naf --env-config=citylearn with t_max=$tmax seed=1 n_train=2 > logs/1-comix-naf.log 2>&1 &
#export CUDA_VISIBLE_DEVICES=3 && python src/main.py --config=covdn     --env-config=citylearn with t_max=$tmax seed=1 n_train=2 > logs/1-covdn.log     2>&1 &
#export CUDA_VISIBLE_DEVICES=7 && python src/main.py --config=covdn-naf --env-config=citylearn with t_max=$tmax seed=1 n_train=2 > logs/1-covdn-naf.log 2>&1 &