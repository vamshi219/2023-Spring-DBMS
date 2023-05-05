import mysql.connector
from mysql.connector import errorcode
from mysql.connector.errors import DataError, Error

table = ['Appointment', 'Bills', 'Doctor', 'animal', 'Transactions', 'Treatement']
user = 'root'
pswrd = 'root@123'
host = 'localhost'
database = 'veterinary'

# Trying to connect to database
try:
    con = mysql.connector.connect(
        user=user,
        password=pswrd,
        host=host,
        database=database
    )
    if(con):
        print("Database is connected")
    else:
        print('Error while connecting to database')
    
    # opening the file
    file= open("tables.txt","w")
    if(file):
        print("File is opened")
    else:
        print('Error file opening')
    cursor = con.cursor()

    # fetching the records
    print()
    for ta in table:
        cursor.execute("select * from "+ta)
        print(ta+" Information")
        file.write(ta+" Information\n")
        for rec in cursor.fetchall():
            msge=""
            for r in rec:
                msge+=str(r)+"\t"
            msge+="\n"

            # writing the records to the txt file
            file.write(msge)
            print(msge)
        file.write("\n")
        print("\n")

except Error as err:
    print("error connecting database or opening file")
    print(err)
    exit()
finally:

    # finally closing the connection
    con.close()
    file.close()
