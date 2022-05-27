/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package j48.algorithm;

//import weka.classifiers.Classifier;
//import weka.classifiers.Evaluation;
import javax.swing.JOptionPane;
import weka.classifiers.trees.J48;
import weka.core.DenseInstance;
import weka.core.Instance;
//import weka.core.Debug.Random;
import weka.core.Instances;
import weka.core.converters.ConverterUtils.DataSource;

/**
 *
 * @author Emily
 */
public class J48Algorithm {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception{
        // TODO code application logic here
        //System.out.println(decisionJ48("overcast","cool","normal","TRUE"));
    }
    
    public static int decisionJ48(String outlook, String temperature, String humidity, String windy) throws Exception{
        //Carga el fichero del dataset e inicializa la fuente de datos
        DataSource source = new DataSource("j48/algorithm/weather.nominal.arff");
        //Devuelve el conjunto de datos completo
        Instances dataset = source.getDataSet();
        //Indica a las instancias cual es la clase(decision), el último atributo (play)
        dataset.setClassIndex(dataset.numAttributes()-1);
        
        //Crea nuevo objeto J48
        J48 tree = new J48();
        
        //Genera el clasificador a partir de las instancias del dataset
        tree.buildClassifier(dataset);
        System.out.println(tree.toString());
        
        //Clasifica una nueva instancia
        Instance instance = new DenseInstance(4);
        //Establece la referencia al conjunto de datos
        instance.setDataset(dataset);
        
        /*
        String outlook = JOptionPane.showInputDialog("sunny, overcast, rainy:\n");
        String temperature = JOptionPane.showInputDialog("hot, mild, cool:\n");
        String humidity = JOptionPane.showInputDialog("high, normal:\n");
        String windy = JOptionPane.showInputDialog("TRUE, FALSE:\n");
        */
        
        //Establece el valor de cada atributo según su índice
        instance.setValue(0, outlook);
        instance.setValue(1, temperature);
        instance.setValue(2, humidity);
        instance.setValue(3, windy);

        //Clasifica la nueva instancia dada
        int result = (int) tree.classifyInstance(instance);

        //System.out.println("Resultado de clasificar la nueva instancia:" + result);
//        String msj = "";
//        if(result == 0){
//            msj = "Puedes salir a jugar! ";
//        }else if(result == 1){
//            msj = "NO puedes salir a jugar! ";
//        }
//        System.out.println("Resultado de clasificar la nueva instancia:" + msj);

        //Devuelve 0 = yes || 1 = no
        return result;
    }
    
}
