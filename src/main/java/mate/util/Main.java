package mate.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) {

        class DeleteAll {
            public void delAll() {
                Connection connection = ConnectionUtil.getConnection();
                try {
                    PreparedStatement statement213
                            = connection.prepareStatement(
                            "DELETE FROM taxi.cars_drivers;");
                    statement213.executeUpdate();
                    PreparedStatement statement12
                            = connection.prepareStatement(
                            "DELETE FROM taxi.cars;");
                    statement12.executeUpdate();
                    PreparedStatement statement32
                            = connection.prepareStatement(
                            "ALTER TABLE taxi.cars AUTO_INCREMENT = 1;");
                    statement32.executeUpdate();
                    PreparedStatement statement123
                            = connection.prepareStatement(
                            "DELETE FROM taxi.drivers;");
                    statement123.executeUpdate();
                    PreparedStatement statement3626
                            = connection.prepareStatement(
                            "ALTER TABLE taxi.drivers AUTO_INCREMENT = 1;");
                    statement3626.executeUpdate();
                    PreparedStatement statement1
                            = connection.prepareStatement(
                            "DELETE FROM taxi.manufacturers;");
                    statement1.executeUpdate();
                    PreparedStatement statement
                            = connection.prepareStatement(
                            "ALTER TABLE taxi.manufacturers AUTO_INCREMENT = 1;");
                    statement.executeUpdate();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
            }
        }

        new DeleteAll().delAll();
    }
}
