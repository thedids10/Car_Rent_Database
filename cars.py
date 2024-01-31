import psycopg2
import tkinter as tk
from tkinter import ttk


my_w = tk.Tk()
my_w.geometry("1500x1000")


try:
    conn = psycopg2.connect(
        database="car_rent_db",
        user="postgres",
        password="123",
        host="localhost"
    )
    print("Успешное подключение к Базе Данных")

    my_conn = conn.cursor()


    my_conn.execute("SELECT * FROM car_characteristics")

    # Создание Treeview
    tree = ttk.Treeview(my_w)
    tree["columns"] = ("#1", "#2", "#3", "#4", "#5")  # 5 столбцов для отображения данных
    tree.heading("#0", text="ID")  # Первый столбец - ID

    # Заголовки остальных столбцов
    tree.heading("#1", text="Engine")
    tree.heading("#2", text="Date of Issue")
    tree.heading("#3", text="Engine Capacity")
    tree.heading("#4", text="Fuel Type")
    tree.heading("#5", text="Car Color")

    # Добавление данных в Treeview
    for row in my_conn.fetchall():
        tree.insert("", "end", text=row[0], values=(row[1], row[2], row[3], row[4], row[5]))

    tree.pack(expand=True, fill="both")

    my_w.mainloop()

except psycopg2.Error as e:
    print(f"Ошибка при подключении к базе данных: {e}")
