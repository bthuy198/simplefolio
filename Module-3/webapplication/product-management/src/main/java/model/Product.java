package model;

public class Product {
    private long id;
    private String productName;
    private String desc;
    private long quantity;
    private float price;

    public Product(long id, String productName, String desc, long quantity, float price) {
        this.id = id;
        this.productName = productName;
        this.desc = desc;
        this.quantity = quantity;
        this.price = price;
    }
    public Product(String productName, String desc, long quantity, float price) {
        this.productName = productName;
        this.desc = desc;
        this.quantity = quantity;
        this.price = price;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public long getQuantity() {
        return quantity;
    }

    public void setQuantity(long quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
}
