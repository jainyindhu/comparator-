4-bit Magnitude Comparator using Verilog HDL

📌 Project Description

A Magnitude Comparator is a combinational digital circuit used to compare two binary numbers.

In this project, a 4-bit Comparator is designed using Verilog HDL.

The comparator compares two 4-bit inputs, A and B, and determines whether:

- A > B
- A = B
- A < B

---

🎯 Objective

To design and simulate a 4-bit Magnitude Comparator using Verilog HDL and verify its functionality using a testbench.

---

🔧 Inputs and Outputs

Inputs

- A – 4-bit binary number
- B – 4-bit binary number

Outputs

- "A_greater_B" – HIGH when A > B
- "A_equal_B" – HIGH when A = B
- "A_less_B" – HIGH when A < B

---

📊 Comparison Examples

A| B| A > B| A = B| A < B
0000| 0000| 0| 1| 0
0101| 0011| 1| 0| 0
0010| 0110| 0| 0| 1
1010| 1010| 0| 1| 0
1111| 1001| 1| 0| 0
0011| 0111| 0| 0| 1

Only one comparison output should be HIGH at a time.

---

🏗️ Block Diagram

          A[3:0]
             │
             ▼
       ┌───────────────┐
       │               │───► A > B
       │   4-bit       │
       │  Comparator   │───► A = B
       │               │
       │               │───► A < B
       └───────────────┘
             ▲
             │
          B[3:0]

---

💻 Verilog Implementation

The comparison operators are used to compare the two 4-bit inputs.

assign A_greater_B = (A > B);
assign A_equal_B   = (A == B);
assign A_less_B    = (A < B);

---

🧪 Testbench

The testbench applies different combinations of 4-bit values to A and B.

It checks all three conditions:

1. A > B
2. A = B
3. A < B

A waveform file is also generated for simulation.

---

🖥️ Expected Console Output

 A    B   | A>B  A=B  A<B
--------------------------
0000  0000 |  0    1    0
0101  0011 |  1    0    0
0010  0110 |  0    0    1
1010  1010 |  0    1    0
1111  1001 |  1    0    0
0011  0111 |  0    0    1

---

📈 Simulation

The testbench generates a "waveform.vcd" file.

The waveform contains:

- A[3:0]
- B[3:0]
- A_greater_B
- A_equal_B
- A_less_B

The waveform can be viewed using GTKWave.

Save the waveform screenshot as:

simulation/waveform.png

---

▶️ How to Run

Step 1: Compile

Using Icarus Verilog:

iverilog -o comparator_sim comparator.v comparator_tb.v

Step 2: Run Simulation

vvp comparator_sim

Step 3: View Waveform

gtkwave waveform.vcd

---

🛠️ Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Visual Studio Code
- GitHub

---

📚 Applications

Digital comparators are used in:

- ALUs
- Microprocessors
- Digital control systems
- Address comparison
- Sorting circuits
- Data processing systems
- Digital measurement systems

---

⭐ Key Learning

This project demonstrates:

- Combinational logic design
- 4-bit binary comparison
- Verilog comparison operators
- Testbench development
- Waveform simulation
- GitHub project organization

---

👩‍💻 Author

JAINY INDHU

Electronics and Communication Engineering