CREATE MIGRATION m1k3fjq2qhsln5v5qyjrysaoujsgyyz4fcae7hrt2iaethjhdhneyq
    ONTO initial
{
  CREATE TYPE default::User {
      CREATE MULTI LINK friends: default::User;
      CREATE PROPERTY name: std::str;
  };
};
