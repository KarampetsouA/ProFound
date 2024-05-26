
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

public class SystemAdminReviews extends javax.swing.JFrame {

    /**
     * Creates new form Home
     */
    public SystemAdminReviews() {
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

        back = new javax.swing.JLabel();
        confirmReview = new javax.swing.JLabel();
        declineReview = new javax.swing.JLabel();
        logout = new javax.swing.JLabel();
        page = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        back.setText(" ");
        back.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                backMouseClicked(evt);
            }
        });
        getContentPane().add(back, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 510, 90, 40));

        confirmReview.setText(" ");
        confirmReview.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                confirmReviewMouseClicked(evt);
            }
        });
        getContentPane().add(confirmReview, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 510, 200, 40));

        declineReview.setText(" ");
        declineReview.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                declineReviewMouseClicked(evt);
            }
        });
        getContentPane().add(declineReview, new org.netbeans.lib.awtextra.AbsoluteConstraints(570, 510, 190, 40));

        logout.setText(" ");
        logout.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                logoutMouseClicked(evt);
            }
        });
        getContentPane().add(logout, new org.netbeans.lib.awtextra.AbsoluteConstraints(714, 20, 110, 30));

        page.setIcon(new javax.swing.ImageIcon("C:\\Users\\giann\\Documents\\Εργασίες\\ProFound\\Mockups\\Admin - Reviews.png")); // NOI18N
        page.setText(" ");
        getContentPane().add(page, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 840, 570));

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void logoutMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_logoutMouseClicked
        Home a = new Home();
        a.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_logoutMouseClicked

    private void backMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_backMouseClicked
        SystemAdmin a = new SystemAdmin();
        a.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_backMouseClicked

    private void confirmReviewMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_confirmReviewMouseClicked
        JOptionPane.showMessageDialog(this,"Review Confirmed successfully!");
    }//GEN-LAST:event_confirmReviewMouseClicked

    private void declineReviewMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_declineReviewMouseClicked
        JOptionPane.showMessageDialog(this,"Review Declined successfully!","Error",JOptionPane.ERROR_MESSAGE);
    }//GEN-LAST:event_declineReviewMouseClicked

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
    private javax.swing.JLabel confirmReview;
    private javax.swing.JLabel declineReview;
    private javax.swing.JLabel logout;
    private javax.swing.JLabel page;
    // End of variables declaration//GEN-END:variables
}
