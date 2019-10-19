package bean;

public class Owner {
    private int id;
    private String username;
    private String name;
    private int roomNumber;
    private String idNumber;
    private float waterBill;
    private float electricBill;
    private String password;

    public Owner() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(int roomNumber) {
        this.roomNumber = roomNumber;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber;
    }

    public float getWaterBill() {
        return waterBill;
    }

    public void setWaterBill(float waterBill) {
        this.waterBill = waterBill;
    }

    public float getElectricBill() {
        return electricBill;
    }

    public void setElectricBill(float electricBill) {
        this.electricBill = electricBill;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
