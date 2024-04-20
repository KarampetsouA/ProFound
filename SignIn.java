/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;




public class SignIn extends javax.swing.JFrame {
    
    Connection con;
    ResultSet rs;
    PreparedStatement pst;
    /**
     * Creates new form Home
     */
    public SignIn() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        username = new javax.swing.JTextField();
        password = new javax.swing.JPasswordField();
        jComboBox_Type = new javax.swing.JComboBox<>();
        page = new javax.swing.JLabel();
        back = new javax.swing.JLabel();
        signin = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        username.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        username.setForeground(new java.awt.Color(0, 153, 0));
        username.setBorder(null);
        getContentPane().add(username, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 160, 260, 30));

        password.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        password.setForeground(new java.awt.Color(0, 153, 0));
        password.setBorder(null);
        getContentPane().add(password, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 240, 260, 30));

        jComboBox_Type.setBackground(new java.awt.Color(251, 108, 6));
        jComboBox_Type.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jComboBox_Type.setForeground(new java.awt.Color(255, 255, 255));
        jComboBox_Type.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Customer", "Technical Professional", "Customer Support", "System Admin" }));
        jComboBox_Type.setBorder(null);
        getContentPane().add(jComboBox_Type, new org.netbeans.lib.awtextra.AbsoluteConstraints(397, 330, 290, 50));

        page.setIcon(new javax.swing.ImageIcon("C:\\Users\\giann\\Documents\\Εργασίες\\ProFound\\Mockups\\Signin.png")); // NOI18N
        page.setText(" ");
        getContentPane().add(page, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 840, 570));

        back.setText(" ");
        back.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                backMouseClicked(evt);
            }
        });
        getContentPane().add(back, new org.netbeans.lib.awtextra.AbsoluteConstraints(724, 20, 90, 30));

        signin.setText("jLabel1");
        signin.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                signinMouseClicked(evt);
            }
        });
        getContentPane().add(signin, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 450, 200, 50));

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void backMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_backMouseClicked
        Home a = new Home();
        a.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_backMouseClicked

    private void signinMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_signinMouseClicked
        String user = username.getText();
        String pass = password.getText();
        String type = (String) jComboBox_Type.getSelectedItem();
        
         try{
         Class.forName("com.mysql.cj.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost/profound","root","");
         
        
         if(jComboBox_Type.getSelectedItem().equals("Customer"))
         {
             pst=con.prepareStatement("select * from users where username=? and password=? and userType=? ");
             pst.setString(1, user);
             pst.setString(2, pass);
             pst.setString(3, type);
             rs = pst.executeQuery();
             
             if (rs.next())
          {
             JOptionPane.showMessageDialog(this,"Successful Login as Customer!");    
                Customer a = new Customer();
                a.setVisible(true);
                this.dispose();
          }
          else
          {
             JOptionPane.showMessageDialog(this,"Username,password or type of user are incorrect","Error",JOptionPane.ERROR_MESSAGE); 
             username.setText("");
             password.setText("");
          }
             
         }
         else if (jComboBox_Type.getSelectedItem().equals("Technical Professional"))
         {
             
              pst=con.prepareStatement("select * from users where username=? and password=? and userType=? ");
             pst.setString(1, user);
             pst.setString(2, pass);
             pst.setString(3, type);
             rs = pst.executeQuery();
             
             if (rs.next())
          {
             JOptionPane.showMessageDialog(this,"Successful Login as Technical Professional!"); 
             TechnicalProfessional a = new TechnicalProfessional();
             a.setVisible(true);
             this.dispose();
          }
          else
          {
             JOptionPane.showMessageDialog(this,"Username,password or type of user are incorrect","Error",JOptionPane.ERROR_MESSAGE); 
             username.setText("");
             password.setText("");
          } 
         }
              else if (jComboBox_Type.getSelectedItem().equals("Customer Support"))
         {
             
              pst=con.prepareStatement("select * from users where username=? and password=? and userType=? ");
             pst.setString(1, user);
             pst.setString(2, pass);
             pst.setString(3, type);
             rs = pst.executeQuery();
             
             if (rs.next())
          {
             JOptionPane.showMessageDialog(this,"Successful Login as Customer Support!");  
             CustomerSupport a = new CustomerSupport();
             a.setVisible(true);
             this.dispose();
          }
          else
          {
             JOptionPane.showMessageDialog(this,"Username,password or type of user are incorrect","Error",JOptionPane.ERROR_MESSAGE); 
             username.setText("");
             password.setText("");
          }   
         }
               else if (jComboBox_Type.getSelectedItem().equals("System Admin"))
         {
             
              pst=con.prepareStatement("select * from users where username=? and password=? and userType=? ");
             pst.setString(1, user);
             pst.setString(2, pass);
             pst.setString(3, type);
             rs = pst.executeQuery();
             
             if (rs.next())
          {
             JOptionPane.showMessageDialog(this,"Successful Login as System Admin!");
             SystemAdmin a = new SystemAdmin();
             a.setVisible(true);
             this.dispose();
          }
          else
          {
             JOptionPane.showMessageDialog(this,"Username,password or type of user are incorrect","Error",JOptionPane.ERROR_MESSAGE); 
             username.setText("");
             password.setText("");
          } 
         }
         else
         {
            JOptionPane.showMessageDialog(this,"Type of user is blank! Select a valid type of user!","Error",JOptionPane.ERROR_MESSAGE); 
         }
        }catch (ClassNotFoundException | SQLException ex) {
         Logger.getLogger(SignIn.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_signinMouseClicked

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Home.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Home.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Home.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Home.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Home().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel back;
    private javax.swing.JComboBox<String> jComboBox_Type;
    private javax.swing.JLabel page;
    private javax.swing.JPasswordField password;
    private javax.swing.JLabel signin;
    private javax.swing.JTextField username;
    // End of variables declaration//GEN-END:variables
}