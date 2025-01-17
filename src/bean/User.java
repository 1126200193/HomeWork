package bean;

public class User {
    private String username;
    private String password;
    private int id;
    private String type;

    public User(String username, String password, int id, String type) {
        this.username = username;
        this.password = password;
        this.id = id;
        this.type = type;
    }

    public User() {

    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
