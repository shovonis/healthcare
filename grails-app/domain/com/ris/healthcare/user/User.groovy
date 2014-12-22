package com.ris.healthcare.user

/**
 * @author rifatul.islam
 * @since 12/14/14.
 */
class User implements Serializable {
    String firstName
    String lastName
    String password
    String email
    String userName
    String providerCode
    byte[] image

    static constraints = {
        firstName(blank: true, nullable: true)
        lastName(blank: true, nullable: true)
        email(email: true, blank: false)
        password(blank: false)
        userName(blank: false)
        image(nullable: true)
    }

    @Override
    public String toString() {
        return "User{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", userName='" + userName + '\'' +
                ", providerCode='" + providerCode + '\'' +
                '}';
    }
}
