from tkinter import *
import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="fender10",
    database="Database_Project"

)
mycursor = mydb.cursor()

populationList = []
ethnicGroupList = []

def printTest():
    print(test)

def populationWindow():
    populationWindow = Toplevel(root)

def ethnicWindow():
    ethnicWindow = Toplevel(root)
    windowTitle = Label(ethnicWindow,text="Ethnic Groups:")
    windowTitle.grid(row=0)
    windowTitle1 = Label(ethnicWindow,text="Percentage:")
    windowTitle1.grid(row=0,column=1)
    labels=[]

    counter = 0
    mycursor.execute("SELECT NameOfGroup, Percentage FROM EthnicGroups ORDER BY Percentage DESC")
    myresult = mycursor.fetchall()
    for x in myresult:
        ethnicGroupList.append(x)

    myresult.clear()
    rows = 1
    for x in ethnicGroupList:
        group = x[0]
        groupLabel = group + ": "
        label = Label(ethnicWindow,text=groupLabel)
        label.grid(row=rows,column=0)
        labels.append(label)
        percentage = str(x[1])
        label1 = Label(ethnicWindow,text=percentage)
        label1.grid(row=rows, column=1)
        labels.append(label1)
        rows = rows + 1
    ethnicGroupList.clear()
    buttonRow = rows+1

    #def destroyLabel():
     #   for x in labels:
      #      x.destroy()

    #clearButtonFrame = Frame(ethnicWindow)
    #clearButtonFrame.grid(row=buttonRow,column=2)
    #clearButton = Button(clearButtonFrame, text="clear", command=destroyLabel)
    #clearButton.grid(row=buttonRow,column=2)


    exitButtonFrame = Frame(ethnicWindow)
    exitButtonFrame.grid(row=buttonRow,column=3)
    exitButton = Button(exitButtonFrame, text="exit", command=ethnicWindow.destroy)
    exitButton.grid(row=buttonRow, column=3)

def allVillagesWindow():
    villageWindow = Toplevel(root)
    display = Label(villageWindow, text="Villages of Guam")
    display.pack()
    buttons = []
    villageList = []

    villageFrame = Frame(villageWindow)
    villageFrame.pack(expand=True, fill=BOTH)

    mycursor.execute("SELECT VillageName FROM Village ORDER BY VillageName ASC")
    myresult = mycursor.fetchall()
    for names in myresult:
        for y in names:
                villageList.append(y)

    def createVillageWindow(event):
        w = event.widget
        nameOfVillage = w['text']
        village = VillageWindow(villageWindow, nameOfVillage)

    for x in villageList:
        name = x
        villageButton = Button(villageFrame, text=name)
        villageButton.pack()
        villageButton.bind('<Button-1>',createVillageWindow)
        buttons.append(villageButton)



class VillageWindow:
    villageName = ""
    labels = []
    buttons = []

    def __init__(self,master,villageName):
       villageWindow = Toplevel(master)
       self.villageName = villageName
       self.titleLabel = Label(villageWindow, text=villageName + " Village", height=3)
       self.titleLabel.grid(row=0,column=0)
       #bottomFrame = Frame(villageWindow)
       #bottomFrame.pack(side=BOTTOM)
       bottomFrame = Frame(villageWindow)
       bottomFrame.grid(row=2)

       var = StringVar()
       houseButton = Radiobutton(villageWindow, indicatoron =0, text="Houses", variable=var, value="House", command=lambda: self.displayData(villageWindow,"House" ))
       houseButton.grid(row=1,column=0)

       apartmentButton = Radiobutton(villageWindow, indicatoron =0, text="Apartments", variable=var, value="Apartment", command = lambda: self.displayData(villageWindow, "Apartment"))
       apartmentButton.grid(row=1,column=1)

       publicSchoolButton = Radiobutton(villageWindow, indicatoron =0, text="Public Schools", variable=var, value="PublicSchool", command = lambda: self.displayData(villageWindow, "PublicSchool"))
       publicSchoolButton.grid(row=1,column=2)

       privateSchoolButton = Radiobutton(villageWindow, indicatoron =0, text="Private Schools", variable=var, value="PrivateSchool", command = lambda: self.displayData(villageWindow, "PrivateSchool"))
       privateSchoolButton.grid(row=1,column=3)

       collegeButton = Radiobutton(villageWindow, indicatoron =0, text="Colleges", variable=var, value="College", command = lambda: self.displayData(villageWindow, "College"))
       collegeButton.grid(row=1,column=4)

       restaurantButton = Radiobutton(villageWindow, indicatoron =0, text="Restaurants", variable=var, value="Restaurant", command = lambda: self.displayData(villageWindow, "Restaurant"))
       restaurantButton.grid(row=1,column=5)

       mallButton = Radiobutton(villageWindow, indicatoron =0, text="Malls", variable=var, value="Mall", command = lambda: self.displayData(villageWindow, "Mall"))
       mallButton.grid(row=1,column=6)

       movieTheaterButton = Radiobutton(villageWindow, indicatoron =0, text="Movie Theater", variable=var, value="Movie", command = lambda: self.displayData(villageWindow, "MovieTheater"))
       movieTheaterButton.grid(row=1, column=7)

       beachButton= Radiobutton(villageWindow, indicatoron =0, text="Beaches", variable=var, value="Beach", command=lambda: self.displayData(villageWindow, "Beach"))
       beachButton.grid(row=1, column=8)

       groceryButton = Radiobutton(villageWindow, indicatoron =0, text="Grocery Stores", variable=var, value="Grocery", command = lambda: self.displayData(villageWindow, "Grocery"))
       groceryButton.grid(row=1, column=8)

       churchButton = Radiobutton(villageWindow, indicatoron =0, text="Churches", variable=var, value="Church", command=lambda: self.displayData(villageWindow, "Church"))
       churchButton.grid(row=1, column=9)

    def displayData(self, master, buttonPressed):
        #destroy the labels when another button is pressed
        for x in self.labels:
            x.destroy()
        #destroy all buttons created
        for x in self.buttons:
            x.destroy()

        if buttonPressed == "House":
            mycursor.execute("SELECT House_Description, Address, Cost, NumOfBedrooms, NumOfBathrooms, SquareAcres FROM %s WHERE VillageName = '%s' ORDER BY COST"%(buttonPressed, self.villageName))
            myresult = mycursor.fetchall()

            label1 = LabelFrame(master, text="House Description")
            label1.grid(row=2,column=0)
            self.labels.append(label1)

            label2 = LabelFrame(master, text="Address")
            label2.grid(row=2,column=1)
            self.labels.append(label2)

            label3 = LabelFrame(master, text="Cost $")
            label3.grid(row=2, column=2)
            self.labels.append(label3)

            label4 = LabelFrame(master, text="Number of Bedrooms")
            label4.grid(row=2, column=3)
            self.labels.append(label4)

            label5 = LabelFrame(master, text="Number of Bathrooms")
            label5.grid(row=2, column=4)
            self.labels.append(label5)

            label6 = LabelFrame(master, text="SquareAcres (sqft)")
            label6.grid(row=2, column=5)
            self.labels.append(label6)

            row = 2
            for x in myresult:
                column=0
                row = row + 1
                for y in x:
                    if column == 0:
                        data = Label(label1, text=str(y))
                    if column == 1:
                        data = Label(label2, text=str(y))
                    if column == 2:
                        data = Label(label3, text=str(y))
                    if column == 3:
                        data = Label(label4, text=str(y))
                    if column == 4:
                        data = Label(label5, text=str(y))
                    if column == 5:
                        data = Label(label6, text=str(y))


                    data.grid(row=row, column=column)
                    self.labels.append(data)
                    column = column + 1
            myresult.clear()

        if buttonPressed == "Apartment":
            mycursor.execute("SELECT MLSNumber, Address, AptUnit, CostOfRent, NumOfBedrooms, NumOfBathrooms, SizeInSqft FROM Apartment WHERE VillageName = '%s' ORDER BY CostOfRent"%self.villageName)

            myresult = mycursor.fetchall()

            label1 = LabelFrame(master, text="MLS")
            label1.grid(row=2,column=0)
            self.labels.append(label1)

            label2 = LabelFrame(master, text="Address")
            label2.grid(row=2,column=1)
            self.labels.append(label2)

            label3 = LabelFrame(master, text="AptUnit")
            label3.grid(row=2, column=2)
            self.labels.append(label3)

            label4 = LabelFrame(master, text="CostOfRent")
            label4.grid(row=2, column=3)
            self.labels.append(label4)

            label5 = LabelFrame(master, text="Number of Bedrooms")
            label5.grid(row=2, column=4)
            self.labels.append(label5)

            label6 = LabelFrame(master, text="Number of Bathrooms")
            label6.grid(row=2, column=5)
            self.labels.append(label6)

            label7 = LabelFrame(master, text="Sqft")
            label7.grid(row=2, column=6)
            self.labels.append(label7)

            row = 2
            for x in myresult:
                column=0
                row = row + 1
                for y in x:
                    if column == 0:
                        data = Label(label1, text=str(y))
                    if column == 1:
                        data = Label(label2, text=str(y))
                    if column == 2:
                        data = Label(label3, text=str(y))
                    if column == 3:
                        data = Label(label4, text=str(y))
                    if column == 4:
                        data = Label(label5, text=str(y))
                    if column == 5:
                        data = Label(label6, text=str(y))
                    if column == 6:
                        data = Label(label7, text=str(y))

                    data.grid(row=row, column=column)
                    self.labels.append(data)
                    column = column + 1
            myresult.clear()

        if buttonPressed == "PrivateSchool" or buttonPressed == "PublicSchool":
            var = StringVar()
            elementaryButton = Radiobutton(master, indicatoron=0, text="Elementary Schools", variable=var, value="ElementarySchool", command = lambda: self.displaySchools(master, buttonPressed, "ElementarySchool") )
            elementaryButton.grid(row=2,column=0)
            self.buttons.append(elementaryButton)

            middleButton= Radiobutton(master, indicatoron=0, text="Middle Schools", variable=var, value="MiddleSchool", command = lambda: self.displaySchools(master, buttonPressed, "MiddleSchool"))
            middleButton.grid(row=2,column=1)
            self.buttons.append(middleButton)

            highButton = Radiobutton(master, indicatoron=0, text="High Schools", variable=var, value="HighSchool", command = lambda: self.displaySchools(master, buttonPressed, "HighSchool"))
            highButton.grid(row=2,column=2)
            self.buttons.append(highButton)

        #if buttonPressed == "College":

    def displaySchools(self, master, publicprivate ,gradeLevel):
        for x in self.labels:
            x.destroy()

        if publicprivate == "PublicSchool":
            mycursor.execute("SELECT SchoolName, PhoneNumber, Mascot FROM %s join PublicSchool using(PublicID) WHERE VillageName = '%s' AND PrivateID IS NULL"%(gradeLevel,self.villageName))
            myresult = mycursor.fetchall()

            label1 = LabelFrame(master, text="SchoolName")
            label1.grid(row=3,column=0)
            self.labels.append(label1)

            label2 = LabelFrame(master, text="Phone Number")
            label2.grid(row=3,column=1)
            self.labels.append(label2)

            label3 = LabelFrame(master, text="Mascot")
            label3.grid(row=3, column=2)
            self.labels.append(label3)

            row = 3
            for x in myresult:
                column=0
                row = row + 1
                for y in x:
                    if column == 0:
                        data = Label(label1, text=str(y))
                    if column == 1:
                        data = Label(label2, text=str(y))
                    if column == 2:
                        data = Label(label3, text=str(y))

                    data.grid(row=row, column=column)
                    self.labels.append(data)
                    column = column + 1
            myresult.clear()

        if publicprivate == "PrivateSchool":
            mycursor.execute("SELECT SchoolName, PhoneNumber, Mascot, Denomination, Tuition FROM %s join PrivateSchool using(PrivateID) WHERE VillageName = '%s' "%(gradeLevel,self.villageName))
            myresult = mycursor.fetchall()

            label1 = LabelFrame(master, text="School Name")
            label1.grid(row=3,column=0)
            self.labels.append(label1)

            label2 = LabelFrame(master, text="Phone Number")
            label2.grid(row=3,column=1)
            self.labels.append(label2)

            label3 = LabelFrame(master, text="Mascot")
            label3.grid(row=3, column=2)
            self.labels.append(label3)

            label4 = LabelFrame(master, text="Denomination")
            label4.grid(row=3, column=3)
            self.labels.append(label4)

            label5 = LabelFrame(master, text="Tuition Quarterly($)")
            label5.grid(row=3, column=4)
            self.labels.append(label5)

            row = 3
            for x in myresult:
                column=0
                row = row + 1
                for y in x:
                    if column == 0:
                        data = Label(label1, text=str(y))
                    if column == 1:
                        data = Label(label2, text=str(y))
                    if column == 2:
                        data = Label(label3, text=str(y))
                    if column == 3:
                        data = Label(label4, text=str(y))
                    if column == 4:
                        data = Label(label5, text=str(y))

                    data.grid(row=row, column=column)
                    self.labels.append(data)
                    column = column + 1
            myresult.clear()


class MainWindow:
    def __init__(self, master):
        self.titleLabel = Label(text="Guam Traveler's Database",height=3)
        self.titleLabel.pack()

        mycursor.execute("SELECT * FROM Population")
        myresult = mycursor.fetchall()
        for x in myresult:
            for y in x:
                populationList.append(y)

        populationStr = "population: " + str(populationList[1]) + " people";
        self.populationLabel = Label(master, text=populationStr)
        self.populationLabel.pack()

        bottomFrame = Frame(master)
        bottomFrame.pack(side=BOTTOM)
        self.photo = PhotoImage(file="coverGuam1.png")
        self.label = Label(master, image=self.photo)
        self.label.pack()
        self.ethnicButton = Button(bottomFrame, text="Ethnic Groups", command=ethnicWindow)
        self.ethnicButton.pack(side=LEFT)
        self.villageButton = Button(bottomFrame, text="Villages", command=allVillagesWindow)
        self.villageButton.pack(side=LEFT)



root = Tk()
mainWindow = MainWindow(root)
root.mainloop()
