CREATE DATABASE thirikkale;
CREATE TABLE PARTNER
(
  ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  NAME VARCHAR(30) NOT NULL,
  EMAIL VARCHAR(40) NOT NULL,
  PASSWORD VARCHAR(20) NOT NULL,
  PHONENO1 VARCHAR(15) NOT NULL,
  PHONENO2 VARCHAR(15),
  PHONENO3 VARCHAR(15),
  CREATEDDATETIME TIMESTAMP NOT NULL
);
ALTER TABLE PARTNER ADD UNIQUE(EMAIL);