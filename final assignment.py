import mysql.connector
from mysql.connector import errorcode

config={
    'host':'127.0.0.1',
    'user':'root',
    'password':'srinadh',
    'database': 'toys'
    }
try:
    conn = mysql.connector.connect(**config)
    print("connected")
except mysql.connector.Error as err:
    print(err)
else:
     cursor = conn.cursor()

cursor.execute("show tables")
for table_name in cursor:
    print(table_name)
    
query1="select * from customer_details"
cursor.execute(query1)
result=cursor.fetchall()
for x in result:
    print(x)

query2=("""insert into customer_Details(customer_name, account_id, phone_number, location, customer_Count, gender)
            values ('mani', 593, '98479829', 'washinton', 8, 'F')""")
try:
    cursor.execute(query2)
    conn.commit()
except:
    conn.rollback()

print("one row inserted")


query3= "Delete from customer_details where Account_ID = 593"
try:
    cursor.execute(query3)
    conn.commit()
except:
    conn.rollback()
print(cursor.rowcount, "deletedrecord")
conn.close()
