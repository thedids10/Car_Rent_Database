import psycopg2

from config import host, user, password, database

    try:

    with psycopg2.connect(host=host, user=user, password=password, database=database) as conn:

    print("Connected")

    with conn.cursor() as cursor:

    cursor.execute("SELECT * from Employers")

    rows = cursor.fetchall()

    result_list = [row for row in rows]

    print(result_list)

except psycopg2.Error as ex:

    print("[INFO] ERROR while working with PostgreSQL", ex