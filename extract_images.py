# Example File
# Cam1.2021423_120001
import os
import cv2

def get_out_file_name(filename, seconds):
    mapping = {
        'Cam1': ['W', 'B'],
        'Cam2': ['M', 'P'],
        'Cam3': ['O', 'N'],
        'Cam4': ['K', 'Q'],
    }

    file_split = filename.split('.')

    left_sheep = mapping[file_split[0]][0]
    right_sheep = mapping[file_split[0]][1]

    date_time = file_split[2]
    date_time_split = date_time.split('_')
    date = date_time_split[0]
    day = date[5:]

    full_date = f'04/{day}/21'

    time = date_time_split[1]
    hour = int(time[:2])

    am_pm = None
    if hour > 12:
        am_pm = 'PM'
    else:
        am_pm = 'AM'

    hour = hour % 12

    left_string = f'{left_sheep}/{full_date} {hour:02}:{seconds/60}:{seconds%60} {am_pm}.png'
    right_string = f'{right_sheep}/{full_date} {hour:02}:{seconds/60}:{seconds%60} {am_pm}.png'

    return left_string, right_string

def main():
    # assign directory

    # CHANGE THIS **************************************
    directory = '' # this will be the hard coded path before Cam1 or Cam2, etc.
    cam_directories = ['Cam1', 'Cam2', 'Cam3', 'Cam4']

    for camera in cam_directories:
        folder = directory + '/' + camera
    
        # iterate over files in
        # that directory
        for filename in os.listdir(folder):
            path = directory + '/' + filename
            video = cv2.VideoCapture(path)

            seconds = 0
            # count the number of frames
            frames = video.get(cv2.CAP_PROP_FRAME_COUNT)
            fps = video.get(cv2.CAP_PROP_FPS)
        
            # calculate duration of the video
            VIDEO_TOTAL_SECONDS = round(frames / fps)

            if VIDEO_TOTAL_SECONDS < 3500:
                continue

            while seconds < VIDEO_TOTAL_SECONDS:
                t_msec = 1000 * seconds
                video.set(cv2.CAP_PROP_POS_MSEC, t_msec)
                ret, frame = video.read()
                columns = frame.shape[1]

                left_image = frame[:, columns//6:columns//2]
                right_image = frame[:, columns//2:((columns//6)*5)]

                # get filenames
                filename_left, filename_right = get_out_file_name(filename, seconds)

                # IF YOU WANT TO WRITE TO A SPECIFIC FOLDER NOT JUST IN PC
                # filename_left = 'directory + '/' + 'output/' + filename_left
                # filename_right = 'directory + '/' + 'output/' + filename_right

                cv2.imwrite(filename_left, left_image)
                cv2.imwrite(filename_right, right_image)
                seconds += 30
                
                # exit() for only one frame

            # exit() for only one hour long video
                
        # exit() for only one camera 

if __name__ == '__main__':
    main()