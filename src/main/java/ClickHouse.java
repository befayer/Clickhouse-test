import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;

public class ClickHouse {

    private static final String DB_URL = "jdbc:clickhouse://localhost:8123/default";

    public static void main(String[] args) {
        try (Connection connection = DriverManager.getConnection(DB_URL)) {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT Person, Project, StartDate, EndDate FROM Bank.test");
            ArrayList<Person> personArrayList = new ArrayList<>();
            while (rs.next()) {
                Person person = new Person(
                        rs.getString("Person"),
                        rs.getString("Project"),
                        rs.getDate("StartDate"),
                        rs.getDate("EndDate"));

                System.out.print("Person: " + rs.getString("Person"));
                System.out.print(", Project: " + rs.getString("Project"));
                System.out.print(", StartDate: " + rs.getDate("StartDate"));
                System.out.println(", EndDate: " + rs.getDate("EndDate"));

                personArrayList.add(person);
            }

            /*personArrayList.forEach(x -> System.out.println(x.getName() + ", " + x.getProductName() + ", " +
                    x.getDateStart() + ", " + x.getDateEnd()));*/

            HashMap<String, String> hashMapPersonProduct = new HashMap<String, String>();

            for (int i = 0; i < personArrayList.size(); i++) {
                String personName = personArrayList.get(i).getName();
                for (int j = 0; j < personArrayList.size(); j++) {
                    String productName = personArrayList.get(j).getProductName();
                    if (!hashMapPersonProduct.containsKey(personName + productName)){

                        rs = statement.executeQuery(
                                "SELECT StartDate, EndDate FROM Bank.test WHERE Person=" + "'" + personName + "'" +
                                " AND Project=" + "'" + productName + "'" +
                                " ORDER BY StartDate ASC");

                        HashMap<Date, Date> hashMapDates = new HashMap<>();
                        HashMap<Date, Date> hashMapResultMap = new HashMap<>();

                        while (rs.next()){
                            hashMapDates.put(rs.getDate(1), rs.getDate(2));
                        }

                        for (Date x: hashMapDates.keySet()){
                            Date key = x;
                            Date value = hashMapDates.get(x);
                            System.out.println(value);
                            while (hashMapDates.containsKey(value)){
                                hashMapResultMap.put(key, hashMapDates.get(value));
                                value = hashMapDates.get(value);
                            }
                            hashMapPersonProduct.put(personName + ", " + productName, key.toString() + ", " + value.toString());
                        }
                    }
                }
            }

            System.out.println("Result");
            for (String x: hashMapPersonProduct.keySet()){
                String key = x.toString();
                String value = hashMapPersonProduct.get(x).toString();
                System.out.println(key + " " + value);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
