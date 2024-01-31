import psycopg2
import tkinter as tk
from tkinter import ttk
import subprocess
from config import db_name, user, password, host


try:
    with psycopg2.connect(database=db_name, user=user, host=host, password=password) as conn:
        print("Успешное подключение к Базе Данных")


        def open_employee_file():
            try:
                subprocess.Popen(['python',
                                  'employee.py'])
            except Exception as e:
                print(f"An error occurred: {e}")

        def showemployers():
            with conn.cursor() as curs:
                curs.execute(f"SELECT * FROM Employers")
                result = curs.fetchall()
                column_names = [desc[0] for desc in curs.description]
                formatted_data = "Названия столбцов:\n"

                formatted_data += "\t".join(column_names) + "\n"

                formatted_data += "\n"
                for row in result:
                    formatted_data += "\t".join(map(str, row)) + "\n"

                for row in result:
                    text_widget.delete("1.0", "end")
                    text_widget.insert("1.0", formatted_data)


        def showmechanics():
            with conn.cursor() as curs:
                curs.execute("SELECT * FROM Mechanics")
                result = curs.fetchall()
                column_names = [desc[0] for desc in curs.description]
                formatted_data = "Названия столбцов:\n"

                formatted_data += "\t".join(column_names) + "\n"

                formatted_data += "\n"
                for row in result:
                    formatted_data += "\t".join(map(str, row)) + "\n"

                for row in result:
                    text_widget.delete("1.0", "end")
                    text_widget.insert("1.0", formatted_data)

        def showcarcharacteristics():
            with conn.cursor() as curs:
                curs.execute("SELECT * FROM Car_characteristics")
                result = curs.fetchall()
                column_names = [desc[0] for desc in curs.description]
                formatted_data = "Названия столбцов:\n"

                formatted_data += "\t".join(column_names) + "\n"

                formatted_data += "\n"
                for row in result:
                    formatted_data += "\t".join(map(str, row)) + "\n"

                for row in result:
                    text_widget.delete("1.0", "end")
                    text_widget.insert("1.0", formatted_data)

        def showpayment():
            with conn.cursor() as curs:
                curs.execute("SELECT * FROM Payment")
                result = curs.fetchall()
                column_names = [desc[0] for desc in curs.description]
                formatted_data = "Названия столбцов:\n"

                formatted_data += "\t".join(column_names) + "\n"

                formatted_data += "\n"
                for row in result:
                    formatted_data += "\t".join(map(str, row)) + "\n"

                for row in result:
                    text_widget.delete("1.0", "end")
                    text_widget.insert("1.0", formatted_data)

        def showrental():
            with conn.cursor() as curs:
                curs.execute("SELECT * FROM Rental")
                result = curs.fetchall()
                column_names = [desc[0] for desc in curs.description]
                formatted_data = "Названия столбцов:\n"

                formatted_data += "\t".join(column_names) + "\n"

                formatted_data += "\n"
                for row in result:
                    formatted_data += "\t".join(map(str, row)) + "\n"

                text_widget.delete("1.0", "end")
                text_widget.insert("1.0", formatted_data)


        def showcarscategory():
            with conn.cursor() as curs:
                curs.execute("SELECT * FROM Cars_category")
                result = curs.fetchall()
                column_names = [desc[0] for desc in curs.description]
                formatted_data = "Названия столбцов:\n"

                formatted_data += "\t".join(column_names) + "\n"

                formatted_data += "\n"
                for row in result:
                    formatted_data += "\t".join(map(str, row)) + "\n"

                text_widget.delete("1.0", "end")
                text_widget.insert("1.0", formatted_data)

        def showclients():
            with conn.cursor() as curs:
                curs.execute("SELECT * FROM Clients")
                result = curs.fetchall()
                column_names = [desc[0] for desc in curs.description]
                formatted_data = "Названия столбцов:\n"

                formatted_data += "\t".join(column_names) + "\n"

                formatted_data += "\n"
                for row in result:
                    formatted_data += "\t".join(map(str, row)) + "\n"

                text_widget.delete("1.0", "end")
                text_widget.insert("1.0", formatted_data)

        def showorders():
            with conn.cursor() as curs:
                curs.execute("SELECT * FROM Orders")
                result = curs.fetchall()
                column_names = [desc[0] for desc in curs.description]
                formatted_data = "Названия столбцов:\n"

                formatted_data += "\t".join(column_names) + "\n"

                formatted_data += "\n"
                for row in result:
                    formatted_data += "\t".join(map(str, row)) + "\n"

                text_widget.delete("1.0", "end")
                text_widget.insert("1.0", formatted_data)

        def showdiscountsnpromotions():
            with conn.cursor() as curs:
                curs.execute("SELECT * FROM Discounts_n_promotions")
                result = curs.fetchall()
                column_names = [desc[0] for desc in curs.description]

                formatted_data = "Названия столбцов:\n"

                formatted_data += "\t".join(column_names) + "\n"

                formatted_data += "\n"
                for row in result:
                    formatted_data += "\t".join(map(str, row)) + "\n"

                text_widget.delete("1.0", "end")
                text_widget.insert("1.0", formatted_data)

        def showorderedgoods():
            with conn.cursor() as curs:
                curs.execute("SELECT * FROM Ordered_goods")
                result = curs.fetchall()
                column_names = [desc[0] for desc in curs.description]

                formatted_data = "Названия столбцов:\n"

                formatted_data += "\t".join(column_names) + "\n"

                formatted_data += "\n"
                for row in result:
                    formatted_data += "\t".join(map(str, row)) + "\n"

                text_widget.delete("1.0", "end")
                text_widget.insert("1.0", formatted_data)


        def order_car_file():
            try:
                subprocess.Popen(['python', 'cars.py'])
            except Exception as e:
                print(f"An error occurred: {e}")


        # Создание корневого окна
        root = tk.Tk()

        def showstock():
            with conn.cursor() as curs:
                curs.execute("SELECT * FROM Stock")
                result = curs.fetchall()
                formatted_data = "Названия столбцов:\n"
                column_names = [desc[0] for desc in curs.description]
                formatted_data += "\t".join(column_names) + "\n"

                formatted_data += "\n"
                for row in result:
                    formatted_data += "\t".join(map(str, row)) + "\n"

                text_widget.delete("1.0", "end")
                text_widget.insert("1.0", formatted_data)

        def showmanagers():
            with conn.cursor() as curs:
                curs.execute("SELECT * FROM Managers")
                result = curs.fetchall()
                column_names = [desc[0] for desc in curs.description]

                formatted_data = "Названия столбцов:\n"
                formatted_data += "\t".join(column_names) + "\n"

                formatted_data += "\n"
                for row in result:
                    formatted_data += "\t".join(map(str, row)) + "\n"

                text_widget.delete("1.0", "end")
                text_widget.insert("1.0", formatted_data)


        def showdeliveries():
            with conn.cursor() as curs:
                curs.execute("SELECT * FROM Service_Station")
                result = curs.fetchall()
                column_names = [desc[0] for desc in curs.description]

                formatted_data = "Названия столбцов:\n"
                formatted_data += "\t".join(column_names) + "\n"

                formatted_data += "\n"
                for row in result:
                    formatted_data += "\t".join(map(str, row)) + "\n"

                text_widget.delete("1.0", "end")
                text_widget.insert("1.0", formatted_data)



        root.geometry("1000x1000")
        root.title("Car_Rent_DB")
        icon = tk.PhotoImage(file="icon.png")
        root.tk.call('wm', 'iconphoto', root._w, icon)
        text_widget = tk.Text(root, width=100, height=20)
        text_widget.pack()


        brands = tk.Button(root, text="Сотрудники", command=showemployers, width=20, height=2)
        brands.pack()
        button_open_employee = tk.Button(root, text="Добавить сотрудника", command=open_employee_file, width=20, height=2)
        button_open_employee.pack()
        categories = tk.Button(root, text="Механики", command=showmechanics , width=20, height=2)
        categories.pack()
        products = tk.Button(root, text="Характеристики", command=showcarcharacteristics, width=20, height=2)
        products.pack()
        warehouses = tk.Button(root, text="Оплата", command=showpayment, width=20, height=2)
        warehouses.pack()
        order = tk.Button(root, text="Аренда", command=showrental, width=20, height=2)
        order.pack()
        orderedProducts = tk.Button(root, text="Категории", command=showcarscategory, width=20, height=2)
        orderedProducts.pack()
        customer = tk.Button(root, text="Клиенты", command=showclients,width=20, height=2)
        customer.pack()
        inventory = tk.Button(root, text="Заказы", command=showorders,width=20, height=2)
        inventory.pack()
        cartProducts = tk.Button(root, text="Скидки и акции", command=showdiscountsnpromotions,width=20, height=2)
        cartProducts.pack()
        feedBacks = tk.Button(root, text="Заказанные товары", command=showorderedgoods,width=20, height=2)
        feedBacks.pack()
        discounts = tk.Button(root, text="Склад", command=showstock,width=20, height=2)
        discounts.pack()
        button_open_car_file = tk.Button(root, text="Заказать автомобиль", command=order_car_file, width=20, height=2)
        button_open_car_file.pack()
        deliveries = tk.Button(root, text="Менеджеры", command=showmanagers, width=20, height=2)
        deliveries.pack()
        root.mainloop()


except psycopg2.Error as e:
    print(f"An error occurred: {e}")
