import java.awt.BorderLayout;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextField;
import java.util.Set;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

public class Calculator implements ActionListener {
   static ScriptEngineManager manager = new ScriptEngineManager();
   static ScriptEngine engine = manager.getEngineByName("JavaScript");
   private static JTextField inputBox;
   double a;
   int k = 1, x = 0, y = 0, z = 0;
   static int flag = 0;
   static double m1, m2;
   char ch;
   static String[] str = {"2 + 2", "1 + 1"};
   static String answer = "";
   static String expression = "";

   Calculator() {
   }

   public static void main(final String[] args) {
      createWindow();
      // Seval1(str);

   }

   private static void createWindow() {
      final JFrame frame = new JFrame("Calculator");
      frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

      createUI(frame);
      frame.setSize(400, 400);
      frame.setLocationRelativeTo(null);
      frame.setVisible(true);
   }

   public static String[] convert(final Set<String> setOfString) {
      // Create String[] of size of setOfString
      final String[] arrayOfString = new String[setOfString.size()];

      // Copy elements from set to string array
      // using advanced for loop
      int index = 0;
      for (final String str : setOfString)
         arrayOfString[index++] = str;

      // return the formed String[]
      return arrayOfString;
   }

   private static void createUI(final JFrame frame) {
      final JPanel panel = new JPanel();
      final Calculator calculator = new Calculator();
      final GridBagLayout layout = new GridBagLayout();
      final GridBagConstraints gbc = new GridBagConstraints();
      panel.setLayout(layout);

      inputBox = new JTextField(25);
      inputBox.setEditable(false);

      // ScriptEngineManager manager = new ScriptEngineManager();
      // ScriptEngine engine = manager.getEngineByName("JavaScript");
      // Object result = null;
      // result = engine.eval("4*5");
      // System.out.println(result);
      final ScriptEngineManager manager = new ScriptEngineManager();
      final ScriptEngine engine = manager.getEngineByName("JavaScript");

      final Object result = null;
      // result = eval( new String("4*5"));
      System.out.println(result);

      final JButton button0 = new JButton("0");
      final JButton button1 = new JButton("1");
      final JButton button2 = new JButton("2");
      final JButton button3 = new JButton("3");
      final JButton button4 = new JButton("4");
      final JButton button5 = new JButton("5");
      final JButton button6 = new JButton("6");
      final JButton button7 = new JButton("7");
      final JButton button8 = new JButton("8");
      final JButton button9 = new JButton("9");

      final JButton buttonPlus = new JButton(" + ");
      final JButton buttonMinus = new JButton(" - ");
      final JButton buttonMultiply = new JButton(" * ");
      final JButton buttonDivide = new JButton(" / ");
      final JButton buttonDot = new JButton(".");
      final JButton buttonEquals = new JButton("ENTER");
      final JButton buttonSign = new JButton("+/-");
      final JButton buttonClear = new JButton("Clear");
      final JButton buttonCancel = new JButton("Cancel");
      final JButton buttonSq = new JButton("sq");
      final JButton buttonSqrt = new JButton("sqrt");
      final JButton buttonLn = new JButton("ln");
      final JButton buttonExp = new JButton("exp");
      final JButton buttonCos = new JButton("cos");
      final JButton buttonSin = new JButton("sin");
      final JButton buttonTan = new JButton("tan");
      final JButton buttonAns = new JButton("ANS");

      button1.addActionListener(calculator);
      button2.addActionListener(calculator);
      button3.addActionListener(calculator);
      button4.addActionListener(calculator);
      button5.addActionListener(calculator);
      button6.addActionListener(calculator);
      button7.addActionListener(calculator);
      button8.addActionListener(calculator);
      button9.addActionListener(calculator);
      button0.addActionListener(calculator);

      buttonPlus.addActionListener(calculator);
      buttonMinus.addActionListener(calculator);
      buttonDivide.addActionListener(calculator);
      buttonMultiply.addActionListener(calculator);
      buttonDot.addActionListener(calculator);
      buttonEquals.addActionListener(calculator);
      buttonSign.addActionListener(calculator);
      buttonClear.addActionListener(calculator);
      buttonCancel.addActionListener(calculator);
      buttonSq.addActionListener(calculator);
      buttonSqrt.addActionListener(calculator);
      buttonLn.addActionListener(calculator);
      buttonExp.addActionListener(calculator);
      buttonCos.addActionListener(calculator);
      buttonSin.addActionListener(calculator);
      buttonTan.addActionListener(calculator);
      buttonAns.addActionListener(calculator);


      gbc.fill = GridBagConstraints.BOTH;
      gbc.weightx = 0.0;
      gbc.weighty = 1.0;
      gbc.gridwidth = 5;
      gbc.gridx = 0;
      gbc.gridy = 0;
      panel.add(inputBox, gbc);
      gbc.weightx = 1.0;
      gbc.weighty = 1.0;
      gbc.gridwidth = 1;
      gbc.gridx = 0;
      gbc.gridy = 1;
      panel.add(buttonClear, gbc);
      gbc.gridx = 1;
      gbc.gridy = 1;
      panel.add(buttonCancel, gbc);
      gbc.weightx = 1.0;
      gbc.weighty = 1.0;
      gbc.gridwidth = 3;
      gbc.gridx = 2;
      gbc.gridy = 1;
      panel.add(buttonEquals, gbc);

      // gbc.fill = GridBagConstraints.HORIZONTAL;
      gbc.weightx = 1.0;
      gbc.weighty = 1.0;
      gbc.gridwidth = 1;
      gbc.gridx = 0;
      gbc.gridy = 2;
      panel.add(buttonExp, gbc);
      gbc.weightx = 1.0;
      gbc.weighty = 1.0;
      gbc.gridx = 1;
      gbc.gridy = 2;
      panel.add(button7, gbc);
      gbc.weightx = 1.0;
      gbc.weighty = 1.0;
      gbc.gridx = 2;
      gbc.gridy = 2;
      panel.add(button8, gbc);
      gbc.weightx = 1.0;
      gbc.weighty = 1.0;
      gbc.gridx = 3;
      gbc.gridy = 2;
      panel.add(button9, gbc);
      gbc.weightx = 1.0;
      gbc.weighty = 1.0;
      gbc.gridx = 4;
      gbc.gridy = 2;
      panel.add(buttonDivide, gbc);

      gbc.fill = GridBagConstraints.BOTH;
      gbc.weightx = 1.0;
      gbc.weighty = 1.0;
      gbc.gridx = 0;
      gbc.gridy = 3;
      panel.add(buttonLn, gbc);
      gbc.gridx = 1;
      gbc.gridy = 3;
      panel.add(button4, gbc);
      gbc.gridx = 2;
      gbc.gridy = 3;
      panel.add(button5, gbc);
      gbc.gridx = 3;
      gbc.gridy = 3;
      panel.add(button6, gbc);
      gbc.gridx = 4;
      gbc.gridy = 3;
      panel.add(buttonMultiply, gbc);

      gbc.fill = GridBagConstraints.BOTH;
      gbc.weightx = 1.0;
      gbc.weighty = 1.0;
      gbc.gridx = 0;
      gbc.gridy = 4;
      panel.add(buttonSqrt, gbc);
      gbc.gridx = 1;
      gbc.gridy = 4;
      panel.add(button1, gbc);
      gbc.gridx = 2;
      gbc.gridy = 4;
      panel.add(button2, gbc);
      gbc.gridx = 3;
      gbc.gridy = 4;
      panel.add(button3, gbc);
      gbc.gridx = 4;
      gbc.gridy = 4;
      panel.add(buttonMinus, gbc);

      gbc.fill = GridBagConstraints.BOTH;
      gbc.weightx = 1.0;
      gbc.weighty = 1.0;
      gbc.gridx = 0;
      gbc.gridy = 5;
      panel.add(buttonSq, gbc);
      gbc.gridx = 1;
      gbc.gridy = 5;
      panel.add(button0, gbc);
      gbc.gridx = 2;
      gbc.gridy = 5;
      panel.add(buttonDot, gbc);
      gbc.gridx = 3;
      gbc.gridy = 5;
      panel.add(buttonSign, gbc);
      gbc.gridx = 4;
      gbc.gridy = 5;
      panel.add(buttonPlus, gbc);

      gbc.fill = GridBagConstraints.BOTH;
      gbc.weightx = 1.0;
      gbc.weighty = 1.0;
      gbc.gridx = 0;
      gbc.gridy = 6;
      panel.add(buttonCos, gbc);
      gbc.gridx = 1;
      gbc.gridy = 6;
      panel.add(buttonSin, gbc);
      gbc.gridx = 2;
      gbc.gridy = 6;
      panel.add(buttonTan, gbc);
      gbc.gridwidth = 2;
      gbc.gridx = 3;
      gbc.gridy = 6;
      panel.add(buttonAns, gbc);

      frame.getContentPane().add(panel, BorderLayout.CENTER);
   }

   public void actionPerformed(final ActionEvent e) {
      final String s = e.getActionCommand();
      //if (answer != "" || expression == "") {
      //   inputBox.setText("");
     // }
      if (s.equals("1")) {
         inputBox.setText(inputBox.getText() + "1");
         expression = inputBox.getText();
      }
      if (s.equals("2")) {
         inputBox.setText(inputBox.getText() + "2");
         expression = inputBox.getText();
      }
      if (s.equals("3")) {
         inputBox.setText(inputBox.getText() + "3");
         expression = inputBox.getText();
      }
      if (s.equals("4")) {
         inputBox.setText(inputBox.getText() + "4");
         expression = inputBox.getText();
      }
      if (s.equals("5")) {
         inputBox.setText(inputBox.getText() + "5");
         expression = inputBox.getText();
      }
      if (s.equals("6")) {
         inputBox.setText(inputBox.getText() + "6");
         expression = inputBox.getText();
      }
      if (s.equals("7")) {
         inputBox.setText(inputBox.getText() + "7");
         expression = inputBox.getText();
      }
      if (s.equals("8")) {
         inputBox.setText(inputBox.getText() + "8");
         expression = inputBox.getText();
      }
      if (s.equals("9")) {
         inputBox.setText(inputBox.getText() + "9");
         expression = inputBox.getText();
      }
      if (s.equals("0")) {
         inputBox.setText(inputBox.getText() + "0");
         expression = inputBox.getText();
      }
      if (s.equals(" + ")) {
         if (expression == "") {
            inputBox.setText("");
            inputBox.setText(answer + " + ");
            expression = inputBox.getText();
         }
         else {
            inputBox.setText(inputBox.getText() + " + ");
            expression = inputBox.getText();
         }
      }
      if (s.equals(" - ")) {
         if (expression == "") {
            inputBox.setText("");
            inputBox.setText(answer + " - ");
            expression = inputBox.getText();
         }
         else {
            inputBox.setText(inputBox.getText() + " - ");
            expression = inputBox.getText();
         }
      }
      if (s.equals(" * ")) {
         if (expression == "") {
            inputBox.setText("");
            inputBox.setText(answer + " * ");
            expression = inputBox.getText();
         } 
         else {
            inputBox.setText(inputBox.getText() + " * ");
            expression = inputBox.getText();
         }
      }
      if (s.equals(" / ")) {
         if (expression == "") {
            inputBox.setText("");
            inputBox.setText(answer + " / ");
            expression = inputBox.getText();
         }
         else {
            inputBox.setText(inputBox.getText() + " / ");
            expression = inputBox.getText();
         }
      }
      if (s.equals("Clear")) {
         inputBox.setText("");
         expression = "";
         answer = "";
         System.out.println("Clear Pressed");
      }
      if (s.equals("Cancel")) {
         if (answer != "") {
            inputBox.setText(answer);
            inputBox.setText(answer);
            expression = inputBox.getText();
         }
         else {
            inputBox.setText("");
            expression = inputBox.getText();
         }
   
      }
      if (s.equals("exp")) {
         System.out.println("exp Pressed");
         if (expression == "" && answer == "") {
            inputBox.setText("");
         }
         else if (expression == "" && answer != "") {
            inputBox.setText("");
            a = Math.exp(Double.parseDouble(answer));
            inputBox.setText("");
            inputBox.setText("exp(" + answer + ") = "  + a);
            answer = String.valueOf(a);
         }
         else {
            str[0] = inputBox.getText();
            try {
               solve();
            } catch (ScriptException error) {
               System.out.println("ERRROR");
            }
            inputBox.setText("");
            a = Math.exp(Double.parseDouble(answer));
            inputBox.setText("");
            inputBox.setText("exp(" + answer + ") = "  + a);
            answer = String.valueOf(a);
         }
      }
      if (s.equals("ln")) {
         System.out.println("ln Pressed");
         if (expression == "" && answer == "") {
            inputBox.setText("");
         }
         else if (expression == "" && answer != "") {
            inputBox.setText("");
            a = Math.log(Double.parseDouble(answer));
            inputBox.setText("");
            inputBox.setText("ln(" + answer + ") = "  + a);
            answer = String.valueOf(a);
         }
         else {
            str[0] = inputBox.getText();
            try {
               solve();
            } catch (ScriptException error) {
               System.out.println("ERRROR");
            }
            inputBox.setText("");
            a = Math.log(Double.parseDouble(answer));
            inputBox.setText("");
            inputBox.setText("ln(" + answer + ") = "  + a);
            answer = String.valueOf(a);
         }
      }
      if (s.equals("sqrt")) {
         System.out.println("sqrt Pressed");
         if (expression == "" && answer == "") {
            inputBox.setText("");
         }
         else if (expression == "" && answer != "") {
            inputBox.setText("");
            a = Math.sqrt(Double.parseDouble(answer));
            inputBox.setText("");
            inputBox.setText("sqrt(" + answer + ") = "  + a);
            answer = String.valueOf(a);
         }
         else {
            str[0] = inputBox.getText();
            try {
               solve();
            } catch (ScriptException error) {
               System.out.println("ERRROR");
            }
            inputBox.setText("");
            a = Math.sqrt(Double.parseDouble(answer));
            inputBox.setText("");
            inputBox.setText("sqrt(" + answer + ") = "  + a);
            answer = String.valueOf(a);
         }
      }
      if (s.equals("sq")) {
         System.out.println("sq Pressed");
         if (expression == "" && answer == "") {
            inputBox.setText("");
         }
         else if (expression == "" && answer != "") {
            inputBox.setText("");
            a = Math.pow(Double.parseDouble(answer), 2);
            inputBox.setText("");
            inputBox.setText("sq(" + answer + ") = "  + a);
            answer = String.valueOf(a);
         }
         else {
            str[0] = inputBox.getText();
            try {
               solve();
            } catch (ScriptException error) {
               System.out.println("ERRROR");
            }
            inputBox.setText("");
            a = Math.pow(Double.parseDouble(answer), 2);
            inputBox.setText("");
            inputBox.setText("sq(" + answer + ") = "  + a);
            answer = String.valueOf(a);
         }
      }
      if (s.equals("+/-")) {
         System.out.println("+/- Pressed");
         if (inputBox.getText().equals("")) {
            inputBox.setText("");
         } 
         else {
            a = -1 * Double.parseDouble(inputBox.getText());
            inputBox.setText("");
            inputBox.setText(inputBox.getText() + a);
         }
      }
      if (s.equals(".")) {
         System.out.println(". Pressed");
         if (y == 0) {
            inputBox.setText(inputBox.getText() + ".");
            y = 1;
         } else {
            inputBox.setText(inputBox.getText());
         }
      }
      if (s.equals("sin")) {
         System.out.println("sin Pressed");
         System.out.println("sq Pressed");
         if (expression == "" && answer == "") {
            inputBox.setText("");
         }
         else if (expression == "" && answer != "") {
            inputBox.setText("");
            a = Math.sin(Math.toDegrees(Double.parseDouble(answer)));
            inputBox.setText("");
            inputBox.setText("sin(" + answer + ") = "  + a);
            answer = String.valueOf(a);
         }
         else {
            str[0] = inputBox.getText();
            try {
               solve();
            } catch (ScriptException error) {
               System.out.println("ERRROR");
            }
            inputBox.setText("");
            a = Math.sin(Math.toDegrees(Double.parseDouble(answer)));
            inputBox.setText("");
            inputBox.setText("sin(" + answer + ") = "  + a);
            answer = String.valueOf(a);
         }
      }
      if (s.equals("cos")) {
         System.out.println("cos Pressed");
         if (inputBox.getText().equals("")) {
            inputBox.setText("");
         } else {
            a = Math.cos(Math.toDegrees(Double.parseDouble(inputBox.getText())));
            inputBox.setText("");
            inputBox.setText(inputBox.getText() + a);
         }
      }
      if (s.equals("tan")) {
         System.out.println("tan Pressed");
         if (inputBox.getText().equals("")) {
            inputBox.setText("");
         } else {
            a = Math.tan(Double.parseDouble(inputBox.getText()));
            inputBox.setText("");
            inputBox.setText(inputBox.getText() + a);
         }
      }
      if (s.equals("ANS")) {
         System.out.println("ANS Pressed");
         if (answer == "") {
            System.out.println("No answer to insert");
         }
         else {
            //inputBox.setText("");
            inputBox.setText(inputBox.getText() + answer);
            expression = inputBox.getText();
            //System.out.println(expression);
         }

      }
      if (s.equals("ENTER")) {
         System.out.println("enter Pressed");
         str[0] = inputBox.getText();
         try {
            solve();
         } catch (ScriptException error) {
            System.out.println("ERRROR");
         }

      }
   }

   private static void solve() throws ScriptException {
      // str[0] = args;
      evaluate(str);
   }

   public static void evaluate(final String[] args) throws ScriptException {
      // ScriptEngineManager manager = new ScriptEngineManager();
      // ScriptEngine engine = manager.getEngineByName("JavaScript");

      Object result = null;
      
      if (flag == 1) {
         
         flag = 0;
      }
      else {
         result = engine.eval(args[0]);
         System.out.println(result);
         answer = String.valueOf(result);
         inputBox.setText(args[0] + " = " + answer);
         args[1] = args[0];
         System.out.println("answer: " + answer + "\n" + "expression: " + expression);
         expression = "";
      }
      
   }
   
} 