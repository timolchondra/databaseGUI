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
    def __init__(self,master,villageName):
       villageWindow = Toplevel(master)
       self.titleLabel = Label(villageWindow, text=villageName + " Village", height=3)
       self.titleLabel.pack()

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
