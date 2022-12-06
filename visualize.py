import numpy as np

import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'

from tensorflow import keras
import cv2
import time

# get data
X = np.load('X.npy')
y = np.load('y.npy')

# load the model
model = keras.models.load_model('models/model_1_0_2')

while True:
    last = None
    for pic, actual in zip(X, y):
        if actual == last:
            continue
        img = pic.copy() * 255
        cv2.resize(img, (img.shape[1], img.shape[0]))

        # predict the image
        pic_np = pic.reshape(1, pic.shape[0], pic.shape[1], 1)
        y_pred = model.predict(pic_np)
        f = open('result.txt', 'w')
        f.write(f'Predicted Class: {round(y_pred[0][0])}\n')
        f.write(f'Actual Class:    {round(actual)}\n')
        f.close()

        # show the pic
        cv2.imwrite('live.png', img)
        
        last = actual
        time.sleep(10)