package teste;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ListView;
import javafx.scene.control.TextField;

public class FXMLDocumentController {

    @FXML
    private ResourceBundle resources;

    @FXML
    private URL location;

    @FXML
    private Button ADD_Button;

    @FXML
    private TextField ADD_Nome;

    @FXML
    private TextField ADD_Passaporte;

    @FXML
    private TextField ADD_Altura;

    @FXML
    private TextField ADD_Peso;

    @FXML
    private TextField ADD_Dia;

    @FXML
    private TextField ADD_Mes;

    @FXML
    private TextField ADD_Ano;

    @FXML
    private ListView<String> ADD_nacao_list;

    @FXML
    private ListView<String> ADD_sexo_list;

    @FXML
    void ADD_Onclick(ActionEvent event) {
        
    }

    @FXML
    void initialize() {
        assert ADD_Button != null : "fx:id=\"ADD_Button\" was not injected: check your FXML file 'FXMLDocument.fxml'.";
        assert ADD_Nome != null : "fx:id=\"ADD_Nome\" was not injected: check your FXML file 'FXMLDocument.fxml'.";
        assert ADD_Passaporte != null : "fx:id=\"ADD_Passaporte\" was not injected: check your FXML file 'FXMLDocument.fxml'.";
        assert ADD_Altura != null : "fx:id=\"ADD_Altura\" was not injected: check your FXML file 'FXMLDocument.fxml'.";
        assert ADD_Peso != null : "fx:id=\"ADD_Peso\" was not injected: check your FXML file 'FXMLDocument.fxml'.";
        assert ADD_Dia != null : "fx:id=\"ADD_Dia\" was not injected: check your FXML file 'FXMLDocument.fxml'.";
        assert ADD_Mes != null : "fx:id=\"ADD_Mes\" was not injected: check your FXML file 'FXMLDocument.fxml'.";
        assert ADD_Ano != null : "fx:id=\"ADD_Ano\" was not injected: check your FXML file 'FXMLDocument.fxml'.";
        assert ADD_nacao_list != null : "fx:id=\"ADD_nacao_list\" was not injected: check your FXML file 'FXMLDocument.fxml'.";
        assert ADD_sexo_list != null : "fx:id=\"ADD_sexo_list\" was not injected: check your FXML file 'FXMLDocument.fxml'.";

        //Procurar aqui e adicionar todas as nacoes possiveis
        

        //Procurar aqui e adicionar todas as nacoes possiveis
        ADD_nacao_list.getItems().addAll("um", "dois", "quarto", "ginco", "a","b","c","d","e","f");

        ADD_sexo_list.getItems().addAll("Masculino", "Feminino");
       
    }
}
