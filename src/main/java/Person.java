import java.util.Date;

public class Person {
    private String name;
    private String productName;
    private Date dateStart;
    private Date dateEnd;

    public Person(String name, String productName, Date dateStart, Date dateEnd) {
        this.name = name;
        this.productName = productName;
        this.dateStart = dateStart;
        this.dateEnd = dateEnd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Date getDateStart() {
        return dateStart;
    }

    public void setDateStart(Date dateStart) {
        this.dateStart = dateStart;
    }

    public Date getDateEnd() {
        return dateEnd;
    }

    public void setDateEnd(Date dateEnd) {
        this.dateEnd = dateEnd;
    }
}
