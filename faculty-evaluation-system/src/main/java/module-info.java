module com.nuyron.facultyevaluationsystem {
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.web;

    requires org.controlsfx.controls;
    requires com.dlsc.formsfx;
    requires net.synedra.validatorfx;
    requires org.kordamp.ikonli.javafx;
    requires org.kordamp.bootstrapfx.core;
    requires eu.hansolo.tilesfx;
    requires com.almasb.fxgl.all;
    requires java.sql;
    requires java.desktop;

    opens com.nuyron.facultyevaluationsystem.controller to javafx.fxml;
    opens com.nuyron.facultyevaluationsystem.models to javafx.base, javafx.fxml;
    exports com.nuyron.facultyevaluationsystem;
}