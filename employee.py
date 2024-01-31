import tkinter as tk
from tkinter import ttk, messagebox
import psycopg2
from tkinter import *
def clear_listbox():
    # Clear listBox
    for row in listBox.get_children():
        listBox.delete(row)
def GetValue(event):
    e1.delete(0, END)
    e2.delete(0, END)
    e3.delete(0, END)
    row_id = listBox.selection()[0]
    select = listBox.item(row_id, 'values')
    e1.insert(0, select[0])
    e2.insert(0, select[1])
    e3.insert(0, select[2])




def Add():
    empid = e1.get()
    empname = e2.get()
    empsurname = e3.get()


    try:
        conn = psycopg2.connect(
            dbname="car_rent_db", user="postgres", password="123", host="localhost"
        )
        cursor = conn.cursor()

        sql = "INSERT INTO employers (employer_id, employer_name, employer_surname) VALUES (%s, %s, %s)"
        val = (empid, empname, empsurname)
        cursor.execute(sql, val)
        conn.commit()
        messagebox.showinfo("Информация", "Сотрудник успешно добавлен...")
        cursor.close()
        conn.close()
        e1.delete(0, END)
        e2.delete(0, END)
        e3.delete(0, END)

        e1.focus_set()

        clear_listbox()
        show()
    except Exception as e:
        print(e)
        messagebox.showerror("Ошибка", "Не удалось добавить сотрудника.")

def update():
    empid = e1.get()
    empname = e2.get()
    surname = e3.get()


    try:
        conn = psycopg2.connect(
            dbname="car_rent_db", user="postgres", password="123", host="localhost"
        )
        cursor = conn.cursor()

        sql = "UPDATE employers SET employer_name = %s, employer_surname = %s WHERE employer_id = %s"
        val = (empname, surname, empid)
        cursor.execute(sql, val)
        conn.commit()
        messagebox.showinfo("Информация", "Запись успешно обновлена...")

        cursor.close()
        conn.close()

        e1.delete(0, END)
        e2.delete(0, END)
        e3.delete(0, END)

        e1.focus_set()
        clear_listbox()
        show()
    except Exception as e:
        print(e)
        messagebox.showerror("Ошибка", "Не удалось обновить запись.")

def delete():
    empid = e1.get()

    try:
        conn = psycopg2.connect(
            dbname="car_rent_db", user="postgres", password="123", host="localhost"
        )
        cursor = conn.cursor()

        sql = "DELETE FROM employers WHERE employer_id = %s"
        val = (empid,)
        cursor.execute(sql, val)
        conn.commit()
        messagebox.showinfo("Информация", "Запись успешно удалена...")

        cursor.close()
        conn.close()

        e1.delete(0, END)
        e2.delete(0, END)
        e3.delete(0, END)

        e1.focus_set()
        clear_listbox()
        show()
    except Exception as e:
        print(e)
        messagebox.showerror("Ошибка", "Не удалось удалить")


def show():
    try:
        conn = psycopg2.connect(
            dbname="car_rent_db", user="postgres", password="123", host="localhost"
        )
        cursor = conn.cursor()

        cursor.execute("SELECT * FROM employers")
        records = cursor.fetchall()

        for record in records:
            listBox.insert("", "end", values=record)

        cursor.close()
        conn.close()

    except Exception as e:
        print(e)
        messagebox.showerror("Ошибка", "Не удалось получить записи.")

root = Tk()
root.geometry("1300x800")

tk.Label(root, text="База данных персонала", fg="red", font=(None, 30)).place(x=300, y=5)
tk.Label(root, text="ID_сотрудника").place(x=10, y=10)
Label(root, text="Имя_сотрудника").place(x=10, y=40)
Label(root, text="Фамилия_сотрудника").place(x=10, y=70)


e1 = Entry(root)
e1.place(x=140, y=10)

e2 = Entry(root)
e2.place(x=140, y=40)

e3 = Entry(root)
e3.place(x=140, y=70)



Button(root, text="Добавить", command=Add, height=3, width=13).place(x=30, y=130)
Button(root, text="Обновить", command=update, height=3, width=13).place(x=140, y=130)
Button(root, text="Удалить", command=delete, height=3, width=13).place(x=250, y=130)

cols = ('ID_сотрудника', 'Имя_сотрудника', 'Фамилия_сотрудника', 'Должность', 'Зарплата', 'Контактная информация')
listBox = ttk.Treeview(root, columns=cols, show='headings')

for col in cols:
    listBox.heading(col, text=col)
    listBox.grid(row=1, column=0, columnspan=2)
    listBox.place(x=10, y=200)

show()
listBox.bind('<Double-Button-1>', GetValue)

root.mainloop()
