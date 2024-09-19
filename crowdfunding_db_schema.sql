﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE category (
    category_id varchar(4)   NOT NULL,
    category varchar(15)   NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (
        category_id
     )
);

CREATE TABLE subcategory (
    subcategory_id varchar(8)   NOT NULL,
    subcategory varchar(20)   NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (
        subcategory_id
     )
);

CREATE TABLE contacts (
    contact_id int   NOT NULL,
    first_name varchar(20)   NOT NULL,
    last_name varchar(20)   NOT NULL,
    email varchar(100)   NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (
        contact_id
     )
);

CREATE TABLE campaign (
    cf_id int   NOT NULL,
    contact_id int   NOT NULL,
    company_name varchar(50)   NOT NULL,
    description varchar(100)   NOT NULL,
    goal real   NOT NULL,
    pledged real   NOT NULL,
    outcome varchar(15)   NOT NULL,
    backers_count int   NOT NULL,
    country varchar(4)   NOT NULL,
    currency varchar(4)   NOT NULL,
    launched_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar(4)   NOT NULL,
    subcategory_id varchar(8)   NOT NULL,
    CONSTRAINT pk_campaign PRIMARY KEY (
        contact_id
     )
);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES contacts (contact_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_category_id FOREIGN KEY(category_id)
REFERENCES category (category_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES subcategory (subcategory_id);

