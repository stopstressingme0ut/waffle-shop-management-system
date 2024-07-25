/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package waffle_shop_management_system;

import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.ResourceBundle;
import javafx.animation.TranslateTransition;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventType;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Hyperlink;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;
import javafx.util.Duration;

/**
 *
 * @author Ahmed Rafi
 */
public class FXMLDocumentController implements Initializable {

    @FXML
    private AnchorPane si_loginform;

    @FXML
    private TextField si_username;

    @FXML
    private PasswordField si_password;

    @FXML
    private Button si_loginBtn;

    @FXML
    private Hyperlink si_forgotpass;

    @FXML
    private AnchorPane su_signupForm;

    @FXML
    private TextField su_username;

    @FXML
    private PasswordField su_password;

    @FXML
    private ComboBox<?> su_question;

    @FXML
    private TextField su_answer;

    @FXML
    private Button su_signupBtn;

    @FXML
    private AnchorPane side_form;

    @FXML
    private Button side_CreateBtn;

    @FXML
    private Button side_alreadyHave;

    private Connection connect;
    private PreparedStatement prepare;
    private ResultSet result;
    private Alert alert;
  
    
    @FXML
    public void loginBtn() {
        
        if (si_username.getText().isEmpty() || si_password.getText().isEmpty()) {
            alert = new Alert(AlertType.ERROR);
            alert.setTitle("Error Message");
            alert.setHeaderText(null);
            alert.setContentText("Incorrect Username/Password");
            alert.showAndWait();
        } else {
            
            String selectData = "SELECT username, password FROM employee WHERE username = ? and password = ?";
            
            connect = database.connectDB();
            
            try {
                
                prepare = connect.prepareStatement(selectData);
                prepare.setString(1, si_username.getText());
                prepare.setString(2, si_password.getText());
                
                result = prepare.executeQuery();
                if (result.next()) {
                    
                    data.username = si_username.getText();
                    
                    alert = new Alert(AlertType.INFORMATION);
                    alert.setTitle("Information Message");
                    alert.setHeaderText(null);
                    alert.setContentText("Successfully Login!");
                    alert.showAndWait();
                    
                    
                    Parent root = FXMLLoader.load(getClass().getResource("mainForm.fxml"));
                    
                    Stage stage = new Stage();
                    Scene scene = new Scene(root);
                    
                    stage.setTitle("Waffle Shop");
                    
                            
                    stage.setScene(scene);
                    stage.show();
                    
                    si_loginBtn.getScene().getWindow().hide();
                } else 
                { 
                    alert = new Alert(AlertType.ERROR);
                    alert.setTitle("Error Message");
                    alert.setHeaderText(null);
                    alert.setContentText("Incorrect Username/Password");
                    alert.showAndWait();
                } 
                
            } catch (Exception e) {
                e.printStackTrace();
            }
            
        }
        
    }
    
    
    
    
   
    @FXML
    public void regBtn() {
        
        if (su_username.getText().isEmpty() || su_password.getText().isEmpty()
                || su_question.getSelectionModel().getSelectedItem() == null
                || su_answer.getText().isEmpty()) {
            alert = new Alert(AlertType.ERROR);
            alert.setTitle("Error Message");
            alert.setHeaderText(null);
            alert.setContentText("Please fill all blank fields");
            alert.showAndWait();
        } else {
            
            String regData ="INSERT INTO employee (username, password, question, answer,date)"
                    + "VALUES(?,?,?,?,?)";
            connect = database.connectDB();
            
            try{
               
                    prepare = connect.prepareStatement(regData);
                    prepare.setString(1, su_username.getText());
                    prepare.setString(2, su_password.getText());
                    prepare.setString(3, (String) su_question.getSelectionModel().getSelectedItem());
                    prepare.setString(4, su_answer.getText());
                   
                    Date date = new Date();
                    java.sql.Date sqlDate = new java.sql.Date(date.getTime());
                    prepare.setString(5, String.valueOf(sqlDate));
                    prepare.executeUpdate();
                    
                    prepare.executeUpdate();
                   
                    alert = new Alert(AlertType.INFORMATION);
                    alert.setTitle("Information Message");
                    alert.setHeaderText(null);
                    alert.setContentText("Successfully registered Account!");
                    alert.showAndWait();
                    
                    su_username.setText("");
                    su_password.setText("");
                    su_question.getSelectionModel().clearSelection();
                    su_answer.setText("");
                    
                    TranslateTransition slider = new TranslateTransition();
                    
                    slider.setNode(side_form);
                    slider.setToX(0);
                    slider.setDuration(Duration.seconds(.5));
                    
                    slider.setOnFinished((ActionEvent e) -> {
                        side_alreadyHave.setVisible(false);
                        side_CreateBtn.setVisible(true);
                    });
                    
                    slider.play();
                } catch (Exception e) 
                {
                e.printStackTrace();
                }
        }
        
    }
          
    private String[] questionList = {"What is your favorite Color?", "What is your favorite movie?"};
    public void regLquestionList() {
        List<String> listQ = new ArrayList<>();
        
        for(String data : questionList) {
            listQ.add(data);
        }
        
        ObservableList listData = FXCollections.observableArrayList(listQ);
        su_question.setItems(listData);
    }
   
   
    
    @FXML
    public void switchForm(ActionEvent event) {

        TranslateTransition slider = new TranslateTransition();

        if (event.getSource() == side_CreateBtn) {
            slider.setNode(side_form);
            slider.setToX(300);
            slider.setDuration(Duration.seconds(.5));

            slider.setOnFinished((ActionEvent e) -> {
                side_alreadyHave.setVisible(true);
                side_CreateBtn.setVisible(false);

                /*  fp_questionForm.setVisible(false);
                si_loginform.setVisible(true);
                np_newPassForm.setVisible(false);*/
                
                regLquestionList();
            });

            slider.play();
        } else if (event.getSource() == side_alreadyHave) {
            slider.setNode(side_form);
            slider.setToX(0);
            slider.setDuration(Duration.seconds(.5));

            slider.setOnFinished((ActionEvent e) -> {
                side_alreadyHave.setVisible(false);
                side_CreateBtn.setVisible(true);

                /*  fp_questionForm.setVisible(false);
                si_loginForm.setVisible(true);
                np_newPassForm.setVisible(false);*/
            });

            slider.play();
        }

    }

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }

}
