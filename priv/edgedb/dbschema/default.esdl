module default {
    type User {
        property name: str;
        multi link friends: User;
    }
}