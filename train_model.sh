python3 model.py --model . --data data/ --epochs 150 2>&1 | tee train_model.txt && \
  git add train_model.txt && \
  cp weights.hdf5 model.h5 && \
  git commit -a -m "trained new model" &&
  python3 model.py --model . --data car/ --epochs 150 --load model.json 2>&1 | tee refine_model.txt && \
  git add refine_model.txt && \
  cp weights.hdf5 model.h5 && \
  git commit -a -m "trained new model with car data" && git push \ 
  python3 model.py --model . --data car3/ --epochs 150 --load model.json 2>&1 | tee refine_model.txt && \
  git add refine_model.txt && \
  cp weights.hdf5 model.h5 && \
  git commit -a -m "trained new model with car3 data" && git push &&
  sudo halt


