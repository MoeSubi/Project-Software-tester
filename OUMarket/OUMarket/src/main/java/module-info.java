module com.htl.oumarket {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;
    requires java.base;
    opens com.htl.oumarket to javafx.fxml;
    exports com.htl.oumarket;
    exports com.htl.pojo;
}
