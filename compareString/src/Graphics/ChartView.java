package Graphics;

import javafx.beans.property.SimpleDoubleProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Side;
import javafx.scene.chart.Chart;
import javafx.scene.chart.PieChart;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.HBox;

import java.util.ArrayList;

/**
 *  Permets d'afficher le tableau ainsi que le graphique en camembert
 */
public class ChartView extends HBox {

    private Chart chart;

    private TableView<ObservableEntity> table = new TableView<ObservableEntity>();

    public ChartView(ArrayList<String> objects, ArrayList<Double> comparative){
        ObservableList<PieChart.Data> pieChartData = FXCollections.observableArrayList(); // données observables
        for (int i = 0 ; i < (objects.size() > 7 ? 7 : objects.size()) ; i++ ){
            pieChartData.add(new PieChart.Data(objects.get(i), comparative.get(i)));
        }

        if (objects.size() > 7) {
            float sum = 0;
            for (Double i : comparative.subList(7, comparative.size()))
                sum += i;
            sum = sum / comparative.subList(7, comparative.size()).size() + 1;
            pieChartData.add(new PieChart.Data("Autres (moyenne)", sum));
        }

        chart = new PieChart(pieChartData);
        chart.setLegendSide(Side.RIGHT);
        chart.setTitle("Graphique");

        ObservableList<ObservableEntity> data = FXCollections.observableArrayList();
        for (int i = 0 ; i < objects.size() ; i++) {
            data.add(new ObservableEntity(objects.get(i), comparative.get(i)));
        }

        TableColumn strColumn = new TableColumn("Description");
        TableColumn dblColumn = new TableColumn("Nombre");
        strColumn.setPrefWidth(370);
        dblColumn.setPrefWidth(70);
        strColumn.setCellValueFactory(new PropertyValueFactory<>("str"));
        dblColumn.setCellValueFactory(new PropertyValueFactory<>("dbl"));

        table.getColumns().addAll(strColumn, dblColumn);
        table.setItems(data);
    }

    public void setLegendSide(Side side) { chart.setLegendSide(side); }

    public Chart getChart() { return chart; }

    public TableView<ObservableEntity> getTable() { return table; }

    public static class ObservableEntity {
        private final SimpleStringProperty str;
        private final SimpleDoubleProperty dbl;

        private ObservableEntity(String str, Double dbl) {
            this.str = new SimpleStringProperty(str);
            this.dbl= new SimpleDoubleProperty(dbl);
        }

        public String getStr() { return str.get(); }
        public SimpleStringProperty strProperty() { return this.str; }

        public Double getDbl() { return dbl.get(); }
        public SimpleDoubleProperty dblProperty() { return this.dbl; }
    }
}
