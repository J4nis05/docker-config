from tkinter import *  # (generic)
from tkinter.ttk import *  # (styles)
import servicesDict


root = Tk()
root.geometry("600x400")  # (width x height)
root.title("Docker Compose(r)")

# Your dictionary
dict_data = servicesDict.data


def create_checkboxes(root, dict_data):
    checkboxes = {}
    for i, key in enumerate(dict_data.keys()):
        var = IntVar()
        checkbox = Checkbutton(root, text=f"{key}: {dict_data[key]}", variable=var)
        checkbox.grid(row=i//5, column=i%5)  # Arrange checkboxes in 5 columns
        checkboxes[key] = var
    return checkboxes


checkboxes = create_checkboxes(root, dict_data)

root.mainloop()
