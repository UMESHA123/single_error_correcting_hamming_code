# single_error_correcting_hamming_code
single_error_correcting_hamming_code

the hamming code simulation in protious8.1


https://user-images.githubusercontent.com/73009807/148586872-5c62fbb4-e1fb-4449-abb2-090310b931b8.mp4






https://user-images.githubusercontent.com/73009807/148641380-6b28e93a-e6f9-4814-917f-b05524e7d347.mp4

this the circute of the hamming code error curecter
<img width="881" alt="ckt1" src="https://user-images.githubusercontent.com/73009807/148588400-fd3913b8-8ed3-4263-ae5d-ca26815116ea.png">
<img width="175" alt="parity bit " src="https://user-images.githubusercontent.com/73009807/148588419-cd12bda5-0d1a-4785-98fe-fada482dc74c.png">
<img width="199" alt="error genereter" src="https://user-images.githubusercontent.com/73009807/148588432-d347965e-5a4a-4b31-8d80-bf04d876ac86.png">
<img width="203" alt="error position detecter" src="https://user-images.githubusercontent.com/73009807/148588442-6a70baf5-3741-442d-a394-0587f137997f.png">
<img width="197" alt="error correcter" src="https://user-images.githubusercontent.com/73009807/148588451-66c1f371-9386-47c3-a7fa-b6493c8ce14a.png">


the hamming code programing in verilog



                                        `timescale 1ns / 1ps

                                        module hamming_code_in_verilog(d_out,x2,x4,x6,x7,x8,x9,x10,x11,x12,x13,x16,x19,x22,x23,x24,x25,x26,error_input_pin,d_in);

                                        input [3:0]d_in;
                                        output x2,x4,x6,x7,x8,x9,x10,x11,x12,x13,x16,x19,x22,x23,x24,x25,x26;
                                        input [6:0]error_input_pin;
                                        output [3:0]d_out;


                                        wire x1,x3,x5,x14,x15,x17,x18,x20,x21,a1,a2,a3,a4;


                                        // for parity bit p1
                                        //for xor1 d0 and d1 are the input
                                        xor xor_out1(x1,d_in[0],d_in[1]);
                                        //for xor2 d3 and out of xor1 are the input
                                        xor xor_out2(x2,d_in[3],x1);
                                        //end


                                        //for parity bit p2
                                        //for xor3 the d0 and d2 are the input 
                                        xor xor_out3(x3,d_in[0],d_in[2]);
                                        //for xor4 the d3 and output of the xor3 the input
                                        xor xor_out4(x4,d_in[3],x3);
                                        //end


                                        //for parity bit p3
                                        //for xor5 the d1 and d2 are the input 
                                        xor xor_out5(x5,d_in[1],d_in[2]);
                                        //for xor6 the output of the xor5 and the d3 are the input
                                        xor xor_out6(x6,d_in[3],x5);
                                        //end


                                        //for genereteing the error
                                        xor xor_out7(x7,x2,error_input_pin[0]);
                                        xor xor_out8(x8,x4,error_input_pin[1]);
                                        xor xor_out9(x9,d_in[0],error_input_pin[2]);
                                        xor xor_out10(x10,x6,error_input_pin[3]);
                                        xor xor_out11(x11,d_in[1],error_input_pin[4]);
                                        xor xor_out12(x12,d_in[2],error_input_pin[5]);
                                        xor xor_out13(x13,d_in[3],error_input_pin[6]);
                                        //end


                                        //for error position detection 
                                        xor xor_out14(x14,x2,x9);
                                        xor xor_out15(x15,x11,x13);
                                        xor xor_out16(x16,x14,x15);

                                        xor xor_out17(x17,x4,x9);
                                        xor xor_out18(x18,x12,x13);
                                        xor xor_out19(x19,x17,x18);

                                        xor xor_out20(x20,x6,x11);
                                        xor xor_out21(x21,x12,x13);
                                        xor xor_out22(x22,x20,x21);
                                        //error position detection end



                                        //error currecter
                                        and and_out_1(a1,~x16,x19,x22);
                                        and and_out_2(a2,x16,~x19,x22);
                                        and and_out_3(a3,x16,x19,~x22);
                                        and and_out_4(a4,x16,x19,x22);


                                        xor xor_out23(d_out[0],a1,x9);
                                        xor xor_out24(d_out[1],a2,x11);
                                        xor xor_out25(d_out[2],a3,x12);
                                        xor xor_out26(d_out[3],a4,x13);

                                        //error currectre end

                                        endmodule



<img width="958" alt="hamming_code_in_verilog_out" src="ht<img width="959" alt="verilog_humming_code" src="https://user-images.githubusercontent.com/73009807/148645477-0ad44d92-2f3f-434e-ba7e-f115c8906154.png">

tps://user-images.githubusercontent.com/73009807/148645473-a5991c9e-b017-468c-8b30-9ecc58bc3063.png">



the hamming code programing in python
this is the cicute of the hamming code error currecter
![ckt](https://user-images.githubusercontent.com/73009807/148645512-9137acfe-5717-424c-9e1a-0f3f6f777f36.png)

main page for ITC programing


<img width="950" alt="main page" src="https://user-images.githubusercontent.com/73009807/148645756-a0566a69-ff5c-4b6e-8ee0-fdf3ad9a7c27.png">




for a given jpm  matrix

<img width="948" alt="for jpm" src="https://user-images.githubusercontent.com/73009807/148645707-b2f5bdbe-c214-46a9-9769-5f5596aceb43.png">


for given noise matrix

<img width="950" alt="noise matrix" src="https://user-images.githubusercontent.com/73009807/148645735-03c020ba-105e-4152-b521-27d0a3591bd3.png">

for given mutual information


<img width="951" alt="mutual information" src="https://user-images.githubusercontent.com/73009807/148645747-895dba1e-7671-4e6f-8b2b-c8add4a015eb.png">



hamming code in python


<img width="952" alt="hamming code ckt" src="https://user-images.githubusercontent.com/73009807/148645766-3dd5950c-8b9b-4c09-8b14-987b8e26901d.png">






from tkinter import*
from tkinter import ttk
import string
import re
import math
import numpy as np
from PIL import Image,ImageTk

class ITC():
    def __init__(self,root):
        self.root = root
        self.root.title("ITC in python 📙")
        self.root.geometry("1270x630+0+0")
        self.root.resizable(False,False)
     


        #all veriable list
        self.var_option_selected=StringVar()
        self.var_m_value=IntVar()
        self.var_n_value=IntVar()
        self.var_rs_value=IntVar()

        self.var_d1_value=IntVar()
        self.var_d2_value=IntVar()
        self.var_d3_value=IntVar()
        self.var_d4_value=IntVar()

        self.var_error_p1_value=IntVar()
        self.var_error_p2_value=IntVar()
        self.var_error_p3_value=IntVar()
        self.var_error_d1_value=IntVar()
        self.var_error_d2_value=IntVar()
        self.var_error_d3_value=IntVar()
        self.var_error_d4_value=IntVar()

        #all veriable list is complited


        title_frame=Label(self.root,text='ITC - Programing',font=('goudy old sty',20),relief=RIDGE,bg='#E8DAEF',fg='black',bd=1,compound=LEFT,padx=30)
        title_frame.pack(side=TOP,fill=X)
        
        #it is the main option frame
        menu_frame=LabelFrame(self.root,font=('times now roman',15,'bold'),fg='#262626',bg='white')
        menu_frame.place(x=10,y=50,width=1250,height=50)

        #option selection box select box
        option_box = ttk.Combobox(menu_frame,width=30,textvariable = self.var_option_selected,font=('times now roman',10,'bold'))
        option_box['values']=(
            'Given_Noise_matrix',
            'Given_JPM_matrix',
            'Mutual_information',
            "Single_bit_correction_Hamming_code"
        )
        option_box.place(x=5,y=10)

        #option_button =  Button(menu_frame,text='Enter.',width=20,command=self.calculate)
        #option_button.place(x=280,y=4)

        button2=Button(menu_frame,text='Enter',font=('times now roman',15,'bold'),fg='white',bg='#0b5377',cursor='hand2',command=self.calculate)
        button2.place(x=250,y=7,width=200,height=30)

  
             
    def calculate(self):
        if self.var_option_selected.get() == '':
            message.showerror('Error','The select the any of the option from the select box.',parent=self.root)
        else:
            if bool(self.var_option_selected.get() == "Given_Noise_matrix") | bool(self.var_option_selected.get() == "Mutual_information"):
                main_label_frame = Frame(self.root,width=1250,height=450,bg='white')
                main_label_frame.place(x=10,y=120)

                #################################################################################

                def matrix():
                    show_result_box.delete("1.0",END)
                    show_result_box.insert(END,"\t\t\t\t\t\t\tITC programing --- For a given Noise matrix.")
                    value1 = ''
                    list_value = []
                    #print(matrix_entry.get('1.0',END))
                    matrix_values = (matrix_entry.get('1.0',END))
                    for i in range(int(len(matrix_values))):
                        if matrix_values[i]!=';':
                            value1 = value1 + matrix_values[i]
                        else:
                            list_value.append(value1)
                            value1 = ''
                    removetable = str.maketrans('','','=_{\n\t}abcdefchijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')
                    matrix = [s.translate(removetable) for s in list_value]
                    #print(matrix[0])
                    m = matrix[0].split(',')
                    p_y_by_x_matrix = []  
                    for i in range(len(m)):
                        item = m[i].strip()
                        p_y_by_x_matrix.append(item)
                

                    #converting the string list to the inter list 
                    p_y_by_x_matrix = list(map(float,p_y_by_x_matrix))
                    #print("the str list to float p_y_by_x_matrix")
                    print(p_y_by_x_matrix)


                    mul = self.var_m_value.get() * self.var_n_value.get()
                    #print("the mul value is given below")
                    #print(mul)
                    px_value = p_y_by_x_matrix[mul::]
                    for i in range(self.var_m_value.get()):
                        p_y_by_x_matrix.pop()

                    p_y_by_x_matrix = np.array(p_y_by_x_matrix)
                    #print("The p_y_by_x_matrix is given below the list is converted into the array")
                    print(p_y_by_x_matrix)

                    p_y_by_x_matrix = p_y_by_x_matrix.reshape(self.var_m_value.get() , self.var_n_value.get())
                    #print("this the 5 * 4 array p_y_by_x_matrix ")
                    #print(p_y_by_x_matrix)
                    


                    #print("The value of the px is given below")
                    #print(px_value)
                    


                    final_matrix = p_y_by_x_matrix.reshape(self.var_m_value.get(),self.var_n_value.get())
                    #print("The final matrix is given below")
                    print(final_matrix)
                    show_result_box.insert(END,"\n\n\n\nThe p(y/x) matrix is given below.or Noisse matrix:")
                    show_result_box.insert(END,f"\n{str(final_matrix)} ")

                    px = px_value
                    px = list(map(float,px))
                    px = np.array(px)
                    px=px.reshape(self.var_m_value.get(),1)

                    show_result_box.insert(END,"\n\nThe value of p(y)  is given below:")
                    show_result_box.insert(END,f"\n{str(px)}")

                    h_x = 0
                    for i in range(self.var_m_value.get()):
                        if px[i] == 0:
                            px[i] = 1
                        else:
                            px[i] = px[i]
                        log_result = float(px[i]) * math.log2(1/float(px[i]))
                        h_x = h_x + log_result
                    #print("The value of the h_x is given below")
                    #print(h_x)
                    show_result_box.insert(END,'\n\nThe value of the H(X) is given below:')
                    show_result_box.insert(END,f"\n{str(h_x)}")

                    pxy =  final_matrix * px 
                    #print('the pxy matrix is given below')
                    #print(pxy)
                    show_result_box.insert(END,'\n\n\nThe p(xy) matrix is given below:')
                    show_result_box.insert(END,f'\n{str(pxy)}')

                    h_x_y = 0
                    for i in range(self.var_m_value.get()):
                        for j in range(self.var_n_value.get()):
                            if pxy[i][j] == 0:
                                pxy_log_value = 1
                            else:
                                pxy_log_value = pxy[i][j]
                            h_x_y = h_x_y + pxy[i][j] * math.log2(1/pxy_log_value)
                    #print("The h(xy) value is given below")
                    #print(h_x_y)
                    show_result_box.insert(END,"\n\n\nThe H(xy) value is given below:")
                    show_result_box.insert(END,f"\n{str(h_x_y)}")

                    py_item=0
                    py = []
                    for j in range(self.var_n_value.get()):
                        for i in range(self.var_m_value.get()):
                            py_item = py_item + pxy[i][j]
                        py.append(py_item)
                        py_item = 0
                    #print("the value of the py is given below.")
                    #print(py)

                    show_result_box.insert(END,"\n\n\The p(y) matrix is given below")
                    show_result_box.insert(END,f"\n{str(py)}")

                    h_y = 0
                    for j in range(self.var_n_value.get()):
                        if py[j] == 0:
                            log_value_py = 1
                        else:
                            log_value_py = py[j]
                        h_y = h_y + (py[j] * math.log2(1/log_value_py))
                    ##print("the value of the hy is given below")
                    #print(h_y)
                    show_result_box.insert(END,"\n\n\nThe value of the H(y) is given below:")
                    show_result_box.insert(END,f"\n{str(h_y)}")

                    h_x_by_y = h_x_y - h_y
                    h_y_by_x = h_x_y - h_x
                    #print("the value odf the h(x/y) is gievn below by the formula h(y/x) = hxy - hy")
                    #print(h_x_by_y)
                    show_result_box.insert(END,"\n\n\nThe value of the H(x/y) matrix is given below:")
                    show_result_box.insert(END,f"\n{str(h_x_by_y)}")
                    #print("the value odf the h(y/x) is gievn below by the formula h(y/x) = hxy - hy")
                    #print(h_y_by_x)
                    show_result_box.insert(END,"\n\n\nThe value of the H(y/x) matrix is given below:")
                    show_result_box.insert(END,f"\n{str(h_y_by_x)}")

                    dtx = float(self.var_rs_value.get()) * (float(h_x) - float(h_x_by_y))
                    dty = float(self.var_rs_value.get()) * (float(h_y) - float(h_y_by_x))

                    #print("the value of the dtx is given below:")
                    #print(dtx)
                    show_result_box.insert(END,"\n\n\nThe data transmision rate Dtx is given below:")
                    show_result_box.insert(END,f"\n{str(dtx)}")
                    #print("The value of the dty is given below")
                    #print(dty)
                    show_result_box.insert(END,"\n\n\nThe data transmision rate Dty is given below:")
                    show_result_box.insert(END,f"\n{str(dty)}")

                    cx = float(self.var_rs_value.get()) * (float(math.log2(self.var_n_value.get())) - float(h_x_by_y))
                    cy = float(self.var_rs_value.get()) * (float(math.log2(self.var_m_value.get()) - float(h_y_by_x)))
                    #print("THE VALUE OF THE CX IS GIVEN BELOW")
                    #print(cx)
                    show_result_box.insert(END,"\n\n\nThe Channel capacity Cx is given below:")
                    show_result_box.insert(END,f"\n{str(cx)}")
                    #print("The value of the cy is given below")
                    #print(cy)
                    show_result_box.insert(END,"\n\n\nThe Channel capacity Cy is given below:")
                    show_result_box.insert(END,f"\n{str(cy)}")


                    
                    

                #################################################################################

                label_frame=Label(main_label_frame,text='Enter the order of matrix ',font=('times new roman',11,'bold'),bg='#E8DAEF',relief=RIDGE,bd=0)
                label_frame.place(x=10,y=10,width=200,height=30)

                m_label = Label(main_label_frame,text="M",font=('times new roman',12,'bold'),bg='#E8DAEF').place(x=215,y=10)
                m_entry = ttk.Entry(main_label_frame,width=5,textvariable=self.var_m_value)
                m_entry.place(x=240,y=11)
                n_label = Label(main_label_frame,text="N",font=('times new roman',12,'bold'),bg='#E8DAEF').place(x=280,y=10)
                n_entry = ttk.Entry(main_label_frame,width=5,textvariable=self.var_n_value)
                n_entry.place(x=305,y=11)

                m_n_value_get_button=Button(main_label_frame,text='Enter',font=('times now roman',13,'bold'),fg='white',bg='#0b5377',cursor='hand2')
                m_n_value_get_button.place(x=10,y=45,width=335,height=25)

                label_frame=Label(main_label_frame,text='Enter the matrix ',font=('times new roman',11,'bold'),bg='#E8DAEF',relief=RIDGE,bd=0)
                label_frame.place(x=10,y=80,width=335,height=25)

                matrix_entry = Text(main_label_frame,width=47,height=10,bd=1,bg='lightyellow',relief = GROOVE,font=('times now roman',10,'bold'))
                matrix_entry.place(x=10,y=115)

                label_frame=Label(main_label_frame,text='Enter the Bit transimision Rate ',font=('times new roman',11,'bold'),bg='#E8DAEF',relief=RIDGE,bd=0)
                label_frame.place(x=10,y=290,width=335,height=25)

                n_entry = ttk.Entry(main_label_frame,width=55,textvariable=self.var_rs_value)
                n_entry.place(x=10,y=320)

                rs_value_get_button=Button(main_label_frame,text='Enter',font=('times now roman',13,'bold'),fg='white',bg='#0b5377',cursor='hand2',command=matrix)
                rs_value_get_button.place(x=10,y=350,width=335,height=25)

                show_result_box = Text(main_label_frame,width=127,height=26,bd=1,bg='lightyellow',relief = GROOVE,font=('times now roman',10,'bold'))
                show_result_box.place(x=350,y=10)

                show_result_box.insert(END,"\t\t\t\t\t\t\tITC programing --- For a given Noise matrix.")


        if self.var_option_selected.get() == '':
            message.showerror('Error','The select the any of the option from the select box.',parent=self.root)
        else:
            if bool(self.var_option_selected.get() == "Given_JPM_matrix"):
                main_label_frame = Frame(self.root,width=1250,height=450,bg='white')
                main_label_frame.place(x=10,y=120)

                #################################################################################

                def matrix():
                    show_result_box.delete("1.0",END)
                    show_result_box.insert(END,"\t\t\t\t\t\t\tITC programing --- For a given JMP matrix.")
                    value1 = ''
                    list_value = []
                    #print(matrix_entry.get('1.0',END))
                    matrix_values = (matrix_entry.get('1.0',END))
                    for i in range(int(len(matrix_values))):
                        if matrix_values[i]!=';':
                            value1 = value1 + matrix_values[i]
                        else:
                            list_value.append(value1)
                            value1 = ''
                    removetable = str.maketrans('','','=_{\n\t}abcdefchijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')
                    matrix = [s.translate(removetable) for s in list_value]
                    #print(matrix[0])
                    m = matrix[0].split(',')
                    pxy = []  
                    for i in range(len(m)):
                        item = m[i].strip()
                        pxy.append(item)
                

                    #converting the string list to the inter list 
                    pxy = list(map(float,pxy))
                    #print("the str list to float pxy")
                    #print(pxy)


                    mul = self.var_m_value.get() * self.var_n_value.get()
                    #print("the mul value is given below")
                    #print(mul)
                    px_value = pxy[mul::]
                    for i in range(self.var_m_value.get()):
                        pxy.pop()

                    pxy = np.array(pxy)
                    #print("The pxy is given below the list is converted into the array")
                    print(pxy)

                    pxy = pxy.reshape(self.var_m_value.get() , self.var_n_value.get())
                    #print("this the 5 * 4 array pxy ")
                    #print(pxy)
                    


                    #print("The value of the px is given below")
                    #print(px_value)
                    

                
                    final_matrix = pxy.reshape(self.var_m_value.get(),self.var_n_value.get())
                    #print("The final matrix is given below")
                    #print(final_matrix)
                    show_result_box.insert(END,"\n\n\n\nThe p(y/x) matrix is given below.or JPM matrix:")
                    show_result_box.insert(END,f"\n{str(final_matrix)} ")

                    px = px_value
                    px = list(map(float,px))
                    px = np.array(px)
                    px=px.reshape(self.var_m_value.get(),1)

                    show_result_box.insert(END,"\n\nThe value of p(y)  is given below:")
                    show_result_box.insert(END,f"\n{str(px)}")

                    h_x = 0
                    for i in range(self.var_m_value.get()):
                        if px[i] == 0:
                            px[i] = 1
                        else:
                            px[i] = px[i]
                        log_result = float(px[i]) * math.log2(1/float(px[i]))
                        h_x = h_x + log_result
                    #print("The value of the h_x is given below")
                    #print(h_x)
                    show_result_box.insert(END,'\n\nThe value of the H(X) is given below:')
                    show_result_box.insert(END,f"\n{str(h_x)}")

                    pxy = final_matrix
                    #print(pxy)
                    pxy = np.array(pxy)
                    #print(pxy)
                    pxy=pxy.reshape(self.var_m_value.get(),self.var_n_value.get())
                    #print(pxy)
                    #pxy =  final_matrix * px 
                    #print('the pxy matrix is given below')
                    #print(pxy)
                    #show_result_box.insert(END,'\n\n\nThe p(xy) matrix is given below:')
                    #show_result_box.insert(END,f'\n{str(pxy)}')

                    h_x_y = 0
                    for i in range(self.var_m_value.get()):
                        for j in range(self.var_n_value.get()):
                            if pxy[i][j] == 0:
                                pxy_log_value = 1
                            else:
                                pxy_log_value = pxy[i][j]
                            h_x_y = h_x_y + pxy[i][j] * math.log2(1/pxy_log_value)
                    #print("The h(xy) value is given below")
                    #print(h_x_y)
                    show_result_box.insert(END,"\n\n\nThe H(xy) value is given below:")
                    show_result_box.insert(END,f"\n{str(h_x_y)}")

                    py_item=0
                    py = []
                    for j in range(self.var_n_value.get()):
                        for i in range(self.var_m_value.get()):
                            py_item = py_item + pxy[i][j]
                        py.append(py_item)
                        py_item = 0
                    #print("the value of the py is given below.")
                    #print(py)

                    show_result_box.insert(END,"\n\nThe p(y) matrix is given below")
                    show_result_box.insert(END,f"\n{str(py)}")

                    h_y = 0
                    for j in range(self.var_n_value.get()):
                        if py[j] == 0:
                            log_value_py = 1
                        else:
                            log_value_py = py[j]
                        h_y = h_y + (py[j] * math.log2(1/log_value_py))
                    ##print("the value of the hy is given below")
                    #print(h_y)
                    show_result_box.insert(END,"\n\n\nThe value of the H(y) is given below:")
                    show_result_box.insert(END,f"\n{str(h_y)}")

                    h_x_by_y = h_x_y - h_y
                    h_y_by_x = h_x_y - h_x
                    #print("the value odf the h(x/y) is gievn below by the formula h(y/x) = hxy - hy")
                    #print(h_x_by_y)
                    show_result_box.insert(END,"\n\n\nThe value of the H(x/y) matrix is given below:")
                    show_result_box.insert(END,f"\n{str(h_x_by_y)}")
                    #print("the value odf the h(y/x) is gievn below by the formula h(y/x) = hxy - hy")
                    #print(h_y_by_x)
                    show_result_box.insert(END,"\n\n\nThe value of the H(y/x) matrix is given below:")
                    show_result_box.insert(END,f"\n{str(h_y_by_x)}")

                    dtx = float(self.var_rs_value.get()) * (float(h_x) - float(h_x_by_y))
                    dty = float(self.var_rs_value.get()) * (float(h_y) - float(h_y_by_x))

                    #print("the value of the dtx is given below:")
                    #print(dtx)
                    show_result_box.insert(END,"\n\n\nThe data transmision rate Dtx is given below:")
                    show_result_box.insert(END,f"\n{str(dtx)}")
                    #print("The value of the dty is given below")
                    #print(dty)
                    show_result_box.insert(END,"\n\n\nThe data transmision rate Dty is given below:")
                    show_result_box.insert(END,f"\n{str(dty)}")

                    cx = float(self.var_rs_value.get()) * (float(math.log2(self.var_m_value.get())) - float(h_x_by_y))
                    cy = float(self.var_rs_value.get()) * (float(math.log2(self.var_n_value.get()) - float(h_y_by_x)))
                    #print("THE VALUE OF THE CX IS GIVEN BELOW")
                    #print(cx)
                    show_result_box.insert(END,"\n\n\nThe Channel capacity Cx is given below:")
                    show_result_box.insert(END,f"\n{str(cx)}")
                    #print("The value of the cy is given below")
                    #print(cy)
                    show_result_box.insert(END,"\n\n\nThe Channel capacity Cy is given below:")
                    show_result_box.insert(END,f"\n{str(cy)}")


                    
                    

                #################################################################################

                label_frame=Label(main_label_frame,text='Enter the order of matrix ',font=('times new roman',11,'bold'),bg='#E8DAEF',relief=RIDGE,bd=0)
                label_frame.place(x=10,y=10,width=200,height=30)

                m_label = Label(main_label_frame,text="M",font=('times new roman',12,'bold'),bg='#E8DAEF').place(x=215,y=10)
                m_entry = ttk.Entry(main_label_frame,width=5,textvariable=self.var_m_value)
                m_entry.place(x=240,y=11)
                n_label = Label(main_label_frame,text="N",font=('times new roman',12,'bold'),bg='#E8DAEF').place(x=280,y=10)
                n_entry = ttk.Entry(main_label_frame,width=5,textvariable=self.var_n_value)
                n_entry.place(x=305,y=11)

                m_n_value_get_button=Button(main_label_frame,text='Enter',font=('times now roman',13,'bold'),fg='white',bg='#0b5377',cursor='hand2')
                m_n_value_get_button.place(x=10,y=45,width=335,height=25)

                label_frame=Label(main_label_frame,text='Enter the matrix ',font=('times new roman',11,'bold'),bg='#E8DAEF',relief=RIDGE,bd=0)
                label_frame.place(x=10,y=80,width=335,height=25)

                matrix_entry = Text(main_label_frame,width=47,height=10,bd=1,bg='lightyellow',relief = GROOVE,font=('times now roman',10,'bold'))
                matrix_entry.place(x=10,y=115)

                label_frame=Label(main_label_frame,text='Enter the Bit transimision Rate ',font=('times new roman',11,'bold'),bg='#E8DAEF',relief=RIDGE,bd=0)
                label_frame.place(x=10,y=290,width=335,height=25)

                n_entry = ttk.Entry(main_label_frame,width=55,textvariable=self.var_rs_value)
                n_entry.place(x=10,y=320)

                rs_value_get_button=Button(main_label_frame,text='Enter',font=('times now roman',13,'bold'),fg='white',bg='#0b5377',cursor='hand2',command=matrix)
                rs_value_get_button.place(x=10,y=350,width=335,height=25)

                show_result_box = Text(main_label_frame,width=127,height=26,bd=1,bg='lightyellow',relief = GROOVE,font=('times now roman',10,'bold'))
                show_result_box.place(x=350,y=10)

                show_result_box.insert(END,"\t\t\t\t\t\t\tITC programing --- For a given Noise matrix.")
        if self.var_option_selected.get() == '':
            message.showerror('Error','The select the any of the option from the select box.',parent=self.root)
        else:
            if self.var_option_selected.get() == "Single_bit_correction_Hamming_code":
                

                self.img_bg1=Image.open('image/ckt.png')
                self.img_bg1=self.img_bg1.resize((1250,450))
                self.img_bg1=ImageTk.PhotoImage(self.img_bg1)

                main_label_frame = Label(self.root,width=1250,height=450,bg='white')
                main_label_frame.place(x=10,y=120)
                main_label_frame.config(image=self.img_bg1)

                def show_parity_bit_data():
                    xor1 = self.var_d1_value.get() ^ self.var_d2_value.get()
                    xor2 = xor1 ^ self.var_d4_value.get()
                    parity1_show.config(text=f"{str(xor2)}")

                    xor3 = self.var_d1_value.get() ^ self.var_d3_value.get()
                    xor4 = xor3 ^ self.var_d4_value.get()
                    parity2_show.config(text=f"{str(xor4)}")

                    xor5 = self.var_d2_value.get() ^ self.var_d3_value.get()
                    xor6 = xor5 ^ self.var_d4_value.get()
                    parity3_show.config(text=f"{str(xor6)}")

                    data1_show.config(text=f"{str(self.var_d1_value.get())}")
                    data2_show.config(text=f"{str(self.var_d2_value.get())}")
                    data3_show.config(text=f"{str(self.var_d3_value.get())}")
                    data4_show.config(text=f"{str(self.var_d4_value.get())}")

                    
               
                    # global xor2,xor4,xor6
                    # p1 is equal to the xor2 
                    # p2 is equal to the xor4 
                    # p3 is equal to the xor6

                    error_p1 = xor2 ^ self.var_error_p1_value.get()
                    error_p2 = xor4 ^ self.var_error_p2_value.get()
                    error_d1 = self.var_d1_value.get() ^ self.var_error_d1_value.get()
                    error_p3 = xor6 ^ self.var_error_p3_value.get()
                    error_d2 = self.var_d2_value.get() ^ self.var_error_d2_value.get()
                    error_d3 = self.var_d3_value.get() ^ self.var_error_d3_value.get()
                    error_d4 = self.var_d4_value.get() ^ self.var_error_d4_value.get()

                    error_parity1_show.config(text=f"{str(error_p1)}")
                    error_parity2_show.config(text=f"{str(error_p2)}")
                    error_data1_show.config(text=f"{str(error_d1)}")
                    error_parity3_show.config(text=f"{str(error_p3)}")
                    error_data2_show.config(text=f"{str(error_d2)}")
                    error_data3_show.config(text=f"{str(error_d3)}")
                    error_data4_show.config(text=f"{str(error_d4)}")

                    xor_position_detecter1 = error_p1 ^ error_d1
                    xor_position_detecter2 = error_d2 ^ error_d4
                    xor_position_detecter3 = xor_position_detecter1 ^ xor_position_detecter2

                    xor_position_detecter4 = error_p2 ^ error_d1
                    xor_position_detecter5 = error_d3 ^ error_d4
                    xor_position_detecter6 = xor_position_detecter4 ^ xor_position_detecter5

                    xor_position_detecter7 = error_p3 ^ error_d2
                    xor_position_detecter8 = error_d3 ^ error_d4
                    xor_position_detecter9 = xor_position_detecter7 ^ xor_position_detecter8

                    error_data1_position_show.config(text=f"{str(xor_position_detecter3)}")
                    error_data2_position_show.config(text=f"{str(xor_position_detecter6)}")
                    error_data3_position_show.config(text=f"{str(xor_position_detecter9)}")

                    xor_1_position_detecter_not_out_3 = ~xor_position_detecter3
                    xor_1_position_detecter_and_1_out_3 = xor_1_position_detecter_not_out_3 & xor_position_detecter6
                    xor_1_position_detecter_and_2_out_3 = xor_1_position_detecter_and_1_out_3 & xor_position_detecter9
                    
                    xor_2_position_detecter_not_out_6 = ~xor_position_detecter6
                    xor_2_position_detecter_and_1_out_6 = xor_2_position_detecter_not_out_6 & xor_position_detecter3
                    xor_2_position_detecter_and_2_out_6 = xor_2_position_detecter_and_1_out_6 & xor_position_detecter9

                    xor_3_position_detecter_not_out_9 = ~xor_position_detecter9
                    xor_3_position_detecter_and_1_out_9 = xor_3_position_detecter_not_out_9 & xor_position_detecter3
                    xor_3_position_detecter_and_2_out_9 = xor_3_position_detecter_and_1_out_9 & xor_position_detecter6

                    xor_4_position_detecter_and_1_out = xor_position_detecter3 & xor_position_detecter6
                    xor_4_position_detecter_and_2_out = xor_4_position_detecter_and_1_out & xor_position_detecter9



                    xor7 = error_d1 ^ xor_1_position_detecter_and_2_out_3
                    xor8 = error_d2 ^ xor_2_position_detecter_and_2_out_6
                    xor9 = error_d3 ^ xor_3_position_detecter_and_2_out_9
                    xor10 = error_d4 ^ xor_4_position_detecter_and_2_out

                    final_currect_data1_position_show.config(text=f"{str(xor7)}")
                    final_currect_data2_position_show.config(text=f"{str(xor8)}")
                    final_currect_data3_position_show.config(text=f"{str(xor9)}")
                    final_currect_data4_position_show.config(text=f"{str(xor10)}")



                d1_entry = ttk.Entry(main_label_frame,width=3,textvariable=self.var_d1_value)
                d1_entry.place(x=18,y=7)
                d2_entry = ttk.Entry(main_label_frame,width=3,textvariable=self.var_d2_value)
                d2_entry.place(x=35,y=7)
                d3_entry = ttk.Entry(main_label_frame,width=3,textvariable=self.var_d3_value)
                d3_entry.place(x=53,y=7)
                d4_entry = ttk.Entry(main_label_frame,width=3,textvariable=self.var_d4_value)
                d4_entry.place(x=68,y=7)

                parity_button=Button(main_label_frame,text='Enter',font=('times now roman',15,'bold'),fg='white',bg='#0b5377',cursor='hand2',command=show_parity_bit_data)
                parity_button.place(x=100,y=6,width=90,height=25)



                parity1_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',width=3,relief=GROOVE)
                parity1_show.place(x=225,y=78,height=30)
                parity2_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',width=3,relief=GROOVE)
                parity2_show.place(x=225,y=128,height=30)
                data1_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',width=3,relief=GROOVE)
                data1_show.place(x=225,y=178,height=30)
                parity3_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',width=3,relief=GROOVE)
                parity3_show.place(x=225,y=229,height=30)
                data2_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',width=3,relief=GROOVE)
                data2_show.place(x=225,y=279,height=30)
                data3_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',width=3,relief=GROOVE)
                data3_show.place(x=225,y=329,height=30)
                data4_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',width=3,relief=GROOVE)
                data4_show.place(x=225,y=380,height=30)




                error_p1_entry = ttk.Entry(main_label_frame,width=3,textvariable=self.var_error_p1_value)
                error_p1_entry.place(x=300,y=70)
                error_p2_entry = ttk.Entry(main_label_frame,width=3,textvariable=self.var_error_p2_value)
                error_p2_entry.place(x=300,y=122)
                error_d1_entry = ttk.Entry(main_label_frame,width=3,textvariable=self.var_error_d1_value)
                error_d1_entry.place(x=300,y=172)
                error_p3_entry = ttk.Entry(main_label_frame,width=3,textvariable=self.var_error_p3_value)
                error_p3_entry.place(x=300,y=223)
                error_d2_entry = ttk.Entry(main_label_frame,width=3,textvariable=self.var_error_d2_value)
                error_d2_entry.place(x=300,y=273)
                error_d3_entry = ttk.Entry(main_label_frame,width=3,textvariable=self.var_error_d3_value)
                error_d3_entry.place(x=300,y=323)
                error_d4_entry = ttk.Entry(main_label_frame,width=3,textvariable=self.var_error_d4_value)
                error_d4_entry.place(x=300,y=373)

                


                error_parity1_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',width=3,relief=GROOVE)
                error_parity1_show.place(x=495,y=78,height=30)
                error_parity2_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',width=3,relief=GROOVE)
                error_parity2_show.place(x=495,y=128,height=30)
                error_data1_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',width=3,relief=GROOVE)
                error_data1_show.place(x=495,y=178,height=30)
                error_parity3_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',width=3,relief=GROOVE)
                error_parity3_show.place(x=495,y=229,height=30)
                error_data2_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',width=3,relief=GROOVE)
                error_data2_show.place(x=495,y=279,height=30)
                error_data3_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',width=3,relief=GROOVE)
                error_data3_show.place(x=495,y=329,height=30)
                error_data4_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',width=3,relief=GROOVE)
                error_data4_show.place(x=495,y=380,height=30)

                error_button=Button(main_label_frame,text='Enter',font=('times now roman',15,'bold'),fg='white',bg='#0b5377',cursor='hand2',command=show_parity_bit_data)
                error_button.place(x=355,y=40,width=90,height=25)

                error_data1_position_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',relief=GROOVE)
                error_data1_position_show.place(x=825,y=390,height=28,width=30)
                error_data2_position_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',relief=GROOVE)
                error_data2_position_show.place(x=866,y=390,height=28,width=30)
                error_data3_position_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',relief=GROOVE)
                error_data3_position_show.place(x=909,y=390,height=28,width=30)


                final_currect_data1_position_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',relief=GROOVE)
                final_currect_data1_position_show.place(x=1165,y=162,height=35,width=36)
                final_currect_data2_position_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',relief=GROOVE)
                final_currect_data2_position_show.place(x=1165,y=212,height=35,width=36)
                final_currect_data3_position_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',relief=GROOVE)
                final_currect_data3_position_show.place(x=1165,y=262,height=35,width=36)
                final_currect_data4_position_show = Label(main_label_frame,font=("times new roman",13,'bold'),bg='WHITE',relief=GROOVE)
                final_currect_data4_position_show.place(x=1165,y=310,height=35,width=36)

if __name__ == '__main__':
    root = Tk()
    wn = ITC(root)
    root.mainloop()

