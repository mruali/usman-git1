import tkinter as tk
from tkinter import filedialog
from PIL import Image
import os

def upload_image():
    file_path=filedialog.askopenfilename()
    convert_to_bw(file_path)

def convert_to_bw(file_path):
    img=Image.open(file_path)    
    img_bw=img.convert('L')
    img_bw.save('convertedimage.jpg')
print(f"saved in:{os.getcwd()}")
root = tk.Tk()
root.title("Black and White Convertor")
button=tk.Button(root,text="Upload Image",command=upload_image)
button.pack()
root.mainloop()    
