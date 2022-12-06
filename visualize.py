from sklearn.model_selection import train_test_split
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

# for i in range(10000):
#     if y[i] == 1:
#         print(f'{i}: {y[i]}')
#         break
# exit()
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



# X_test_np = X_test_np.reshape(X_test_np.shape[0], X_test_np.shape[1], X_test_np.shape[2], 1)



# img = X_train_np[img_num].copy()
# predicted_img = img.copy()
# predicted_img = np.reshape(predicted_img, (1, img.shape[0], img.shape[1], img.shape[2]))
# print(predicted_img.shape)
# print(f'Actual: {y_train_np[img_num]}\nPredicted: {model.predict(predicted_img)}')
# img *= 255
# img = cv2.resize(img, (img.shape[1], img.shape[0]))