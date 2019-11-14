import cv2
import os
#for file_name in os.listdir('movie2'):
for i in range(37,482):
	try:
		file_name='%s.jpg'%(i)
		print(file_name)
		img=cv2.imread('movie2/%s'%(file_name))
		width=1020
		height=1020
		margin_width=427
		margin_height=0
		
		img_crop=img[margin_height:(margin_height+height),margin_width:(margin_width+width)]
		cv2.imwrite('movie2_crop/%s'%(file_name),img_crop)
	except:
		print('err')
	
	
	#input('nghiahsgs')