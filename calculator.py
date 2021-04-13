from tkinter import *
import math 

# Author: Andrew Mccuan
# Date: 11-5-2019
# Program: This program is a functioning scientific calculator.

# To run in ODIN use python3 calculator.py

expression = ""
expressionAdv = ""
expressionOld = ""
answer = ""
flag = ""


class App:
    def press(self, key):
        global expression
        global expressionAdv 
        global answer
        global flag
        ################
        # [+,-,*,/] if there is an answer while no beginning input
        # place answer in front of ...
        if key == '+':
            if expression == '':
                expression = answer
        if key == '-':
            if expression == '':
                expression = answer
        if key == '*':
            if expression == '':
                expression = answer
        if key == '/':
            if expression == '':
                expression = answer
        ################
        if key == '+/-':
            if answer:
                test = float(eval(answer))
                expressionOld = answer
                answer = str(-1*test)
                equation.set(answer)
                equation2.set("-1*" + answer + " = " + expressionOld)
            else:
                test = float(eval(expression))
                expressionOld = expression
                expression = str(-1*test)
                equation.set(expression)
                equation2.set("-1*" + expression + " = " + expressionOld)
        elif key == 'sq':
            if expression == '' and answer:
                expressionAdv = "sq(" + answer + ")"
                expression = answer
                equation.set(expressionAdv) 
                result = eval(expression)**2
                expression = str(result)
                flag = "sq"
            else:
                expressionAdv = "sq(" + expression + ")"
                equation.set(expressionAdv) 
                result = eval(expression)**2
                expression = str(result)
                flag = "sq"
        elif key == 'sqrt':
            if expression == '' and answer:
                expressionAdv = "sqrt(" + answer + ")"
                expression = answer
                equation.set(expressionAdv) 
                result = eval(expression)
                result = math.sqrt(result)
                expression = str(result)
                flag = "sqrt"
            else:
                expressionAdv = "sqrt(" + expression + ")"
                equation.set(expressionAdv) 
                result = eval(expression)
                result = math.sqrt(result)
                expression = str(result)
                flag = "sqrt"
        elif key == 'ln':
            if expression == '' and answer:
                expressionAdv = "ln(" + answer + ")"
                expression = answer
                equation.set(expressionAdv) 
                try:
                    result = eval(expression)
                    result = math.log(result)
                    expression = str(result)
                    flag = "ln"
                except:
                    #print("ERROR, out of range")
                    expression = ""
            else:
                expressionAdv = "ln(" + expression + ")"
                equation.set(expressionAdv) 
                try:
                    result = eval(expression)
                    result = math.log(result)
                    expression = str(result)
                    flag = "ln"
                except:
                    #print("ERROR, out of range")
                    expression = ""
        elif key == 'exp':
            if expression == '' and answer:
                expressionAdv = "exp(" + answer + ")"
                expression = answer
                equation.set(expressionAdv) 
                result = eval(expression)
                result = math.exp(result)
                expression = str(result)
                flag = "exp"
            else:
                expressionAdv = "exp(" + expression + ")"
                equation.set(expressionAdv) 
                result = eval(expression)
                result = math.exp(result)
                expression = str(result)
                flag = "exp"
        elif key == 'cos':
            if expression == '' and answer:
                expressionAdv = "cos(" + answer + ")"
                expression = answer
                equation.set(expressionAdv) 
                result = eval(expression)
                result = round(math.cos(math.radians(result)), 15)
                expression = str(result)
                flag = "cos"
            else:
                expressionAdv = "cos(" + expression + ")"
                equation.set(expressionAdv)
                result = eval(expression)
                result = round(math.cos(math.radians(result)), 15)
                expression = str(result)
                flag = "cos"
        elif key == 'sin':
            if expression == '' and answer:
                expressionAdv = "sin(" + answer + ")"
                expression = answer
                equation.set(expressionAdv) 
                result = eval(expression)
                result = round(math.sin(math.radians(result)), 15)
                expression = str(result)
                flag = "sin"
            else:
                expressionAdv = "sin(" + expression + ")"
                equation.set(expressionAdv) 
                result = eval(expression)
                result = round(math.sin(math.radians(result)), 15)
                expression = str(result)
                flag = "sin"
        elif key == 'tan':
            if expression == '' and answer:
                expressionAdv = "tan(" + answer + ")"
                expression = answer
                equation.set(expressionAdv) 
                result = eval(expression)
                result = round(math.tan(math.radians(result)), 15)
                expression = str(result)
                flag = "tan"
            else:
                expressionAdv = "tan(" + expression + ")"
                equation.set(expressionAdv) 
                result = eval(expression)
                result = round(math.tan(math.radians(result)), 15)
                expression = str(result)
                flag = "tan"
        elif key == 'ANS':
            if answer == '':
                print("No ANSWER to input")
            expression = expression + str(answer)
            equation.set(expression) 
        else:
            #print("Basic stuff")
            expression = expression + str(key) 

            equation.set(expression) 

    def solve(self): 
        # Try and except statement is used 
        # for handling the errors like zero 
        # division error etc. 
  
        # Put that code inside the try block 
        # which may generate the error 
        try: 
            global expression
            global expressionAdv
            global answer
            global flag
            # eval function evaluate the expression 
            # and str function convert the result 
            # into string
            if flag == 'sq':
                answer = str(eval(expression))
                expressionOld = expressionAdv + " = " + answer
                equation2.set(expressionOld)
                equation.set(answer)
                flag = ""
            elif flag == 'sqrt':
                answer = str(eval(expression))
                expressionOld = expressionAdv + " = " + answer
                equation2.set(expressionOld)
                equation.set(answer)
                flag = ""
            elif flag == 'ln':
                answer = str(eval(expression))
                expressionOld = expressionAdv + " = " + answer
                equation2.set(expressionOld)
                equation.set(answer)
                flag = ""
            elif flag == 'exp':
                answer = str(eval(expression))
                expressionOld = expressionAdv + " = " + answer
                equation2.set(expressionOld)
                equation.set(answer)
                flag = ""
            elif flag == 'cos':
                answer = str(eval(expression))
                expressionOld = expressionAdv + " = " + answer
                equation2.set(expressionOld)
                equation.set(answer)
                flag = ""
            elif flag == 'sin':
                answer = str(eval(expression))
                expressionOld = expressionAdv + " = " + answer
                equation2.set(expressionOld)
                equation.set(answer)
                flag = ""
            elif flag == 'tan':
                answer = str(eval(expression))
                expressionOld = expressionAdv + " = " + answer
                equation2.set(expressionOld)
                equation.set(answer)
                flag = ""
            else:
                answer = str(eval(expression))
                expressionOld = expression + " = " + answer
                equation2.set(expressionOld)
                equation.set(answer) 
  
            expression = answer
  
        except: 
            print("EXCEPT ERROR")
            equation.set(" ERROR ") 
            expression = "" 
  
    # Clears the Calculator
    def clear(self): 
        global expression
        global answer 
        expression = "" 
        answer = ""
        equation.set("")
        equation2.set("")

    # Cancels current input on the calculator
    def cancel(self): 
        global expression 
        expression = "" 
        equation.set("")


    def __init__(self, master):
        #Set the color of the background and Buttons
        colorBackground = "#bedfe6"
        colorButton = "#9cc5ff"

        e1 = Entry(master, textvariable=equation2, font=("Serif", 12), width=200, borderwidth=0, background="#7db3ff") 
        e1.pack()
        e = Entry(master, textvariable=equation, font=("Serif", 20), width=200, borderwidth=4, background="#7db3ff") 
        e.pack()

        equation.set("Enter...")


        # Clear, Cancel, OK
        fm7 = Frame(master, background=colorBackground)
        #Button(fm7, text='Clear', command=lambda: self.press("Clear"), height=1, width=7, bg = colorButton).pack(side=LEFT, anchor=W, fill=X, expand=YES, padx=4, pady=2)
        Button(fm7, text='Clear', command=self.clear, height=1, width=7, bg = colorButton).pack(side=LEFT, anchor=W, fill=X, expand=YES, padx=4, pady=2)
        Button(fm7, text='Cancel', command=self.cancel, height=1, width=10, bg = colorButton).pack(side=LEFT, anchor=W, fill=X, expand=YES, padx=4, pady=2)
        #Button(fm7, text='OK', command=lambda: self.press("OK"), height=1, width=15, bg = colorButton).pack(side=LEFT, anchor=W, fill=X, expand=YES, padx=4, pady=2)
        Button(fm7, text='[ENTER]', command=self.solve, height=1, width=15, bg = colorButton).pack(side=LEFT, anchor=W, fill=X, expand=YES, padx=4, pady=2)
        fm7.pack(side=TOP, fill=BOTH, expand=YES)

        # cos, sin, tan
        fm6 = Frame(master, background=colorBackground)#, height=400, width=400, background="#9cb3b8")
        Button(fm6, text='cos', command=lambda: self.press("cos"), height=1, width=7, bg = colorButton).pack(side=LEFT, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm6, text='sin', command=lambda: self.press("sin"), height=1, width=7, bg = colorButton).pack(side=LEFT, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm6, text='tan', command=lambda: self.press("tan"), height=1, width=7, bg = colorButton).pack(side=LEFT, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm6, text='ANS', command=lambda: self.press("ANS"), height=1, width=3, bg = colorButton).pack(side=LEFT, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        fm6.pack(side=BOTTOM, fill=BOTH, expand=YES)
        # sq, sqrt, ln, exp
        fm5 = Frame(master, background=colorBackground)
        Button(fm5, text='exp', command=lambda: self.press("exp"), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm5, text='ln', command=lambda: self.press("ln"), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm5, text='sqrt', command=lambda: self.press("sqrt"), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm5, text='sq', command=lambda: self.press("sq"), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        fm5.pack(side=LEFT, fill=BOTH, expand=YES)
        # 0, 1, 4, 7
        fm1 = Frame(master, background=colorBackground)
        Button(fm1, text='7', command=lambda: self.press(7), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm1, text='4', command=lambda: self.press(4), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm1, text='1', command=lambda: self.press(1), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm1, text='0', command=lambda: self.press(0), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        #Button(fm1, text='cos', command=lambda: self.press("cos"), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        fm1.pack(side=LEFT, fill=BOTH, expand=YES)
        # ., 2, 5, 8
        fm2 = Frame(master, background=colorBackground)
        Button(fm2, text='8', command=lambda: self.press(8), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm2, text='5', command=lambda: self.press(5), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm2, text='2', command=lambda: self.press(2), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm2, text='.', command=lambda: self.press("."), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        #Button(fm2, text='sin', command=lambda: self.press("sin"), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        fm2.pack(side=LEFT, fill=BOTH, expand=YES)
        # +/-, 3, 6, 9
        fm3 = Frame(master, background=colorBackground)
        Button(fm3, text='9', command=lambda: self.press(9), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm3, text='6', command=lambda: self.press(6), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm3, text='3', command=lambda: self.press(3), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm3, text='+/-', command=lambda: self.press("+/-"), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        #Button(fm3, text='tan', command=lambda: self.press("tan"), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        fm3.pack(side=LEFT, fill=BOTH, expand=YES)
        # +, -, *, /
        fm4 = Frame(master, background=colorBackground)
        Button(fm4, text='/', command=lambda: self.press("/"), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm4, text='*', command=lambda: self.press("*"), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm4, text='-', command=lambda: self.press("-"), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        Button(fm4, text='+', command=lambda: self.press("+"), height=1, width=7, bg = colorButton).pack(side=TOP, anchor=W, fill=X, expand=YES, padx=2, pady=2)
        fm4.pack(side=LEFT, fill=BOTH, expand=YES)

        #fm = Frame(master, height=300)
        #Button(fm, text='Left').pack(side=LEFT)
        #Button(fm, text='This is the Center button').pack(side=LEFT)
        #Button(fm, text='Right').pack(side=LEFT)        
        #fm.pack(side=BOTTOM, fill=BOTH, expand=YES)
        
root = Tk()
equation = StringVar()
equation2 = StringVar()
#Sets WINDOW Size
root.geometry("400x300")
#Sets font in window
root.option_add('*font', ('calibri', 12))
#Sets the title of the Window
root.title("Python Scientific Calculator v.5")
display = App(root)
root.mainloop()