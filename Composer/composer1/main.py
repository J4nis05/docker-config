import tkinter as tk
from tkinter import messagebox

def generate_file():
    with open('output.txt', 'w') as f:
        for i, var in enumerate(vars):
            if var.get():
                f.write(f'Checkbox {i+1} is active\n')
    messagebox.showinfo("File Generated", "The output.txt file has been generated successfully.")

root = tk.Tk()
root.title("Python GUI App")

vars = [tk.IntVar() for _ in range(4)]
for i, var in enumerate(vars):
    chk = tk.Checkbutton(root, text=f'Checkbox {i+1}', variable=var)
    chk.pack()

btn = tk.Button(root, text="Generate File", command=generate_file)
btn.pack()

root.mainloop()
