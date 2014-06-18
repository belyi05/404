

CREATE TABLE user
(
  id serial(15),
  CONSTRAINT user_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE role
(
  id serial(15),
  role_id integer(15),
  name character varying(50),
  email character varying(50),
  password character varying(50),
  is_account_confirmed boolean,
  is_account_banned boolean,
  name character varying(50),
  description text,
  is_admin boolean,
  CONSTRAINT role_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE contractor
(
  id serial(15),
  name character varying(50),
  description text,
  CONSTRAINT contractor_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE project
(
  id serial(15),
  name character varying(50),
  description text,
  contractor_id integer(15),
  manager_id integer(15),
  created_at timestamp without time zone,
  status_id smallint(1),
  CONSTRAINT project_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE manager
(
  id serial(15),
  name character varying(50),
  description text,
  CONSTRAINT manager_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE status
(
  id serial(1),
  name character varying(50),
  CONSTRAINT status_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE billing_requests
(
  id serial(15),
  project_id integer(15),
  type_id smallint(1),
  description text,
  amount money(10),
  is_declined boolean,
  is_signed boolean,
  is_approved boolean,
  created_at timestamp without time zone,
  manager_id integer(15),
  contractor_id integer(15),
  accountant_id integer(15),
  CONSTRAINT billing_requests_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE accountant
(
  id serial(15),
  name character varying(50),
  description text,
  CONSTRAINT accountant_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE billing_operation_types
(
  id serial(15),
  description text,
  CONSTRAINT billing_operation_types_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE project_plan
(
  id serial(15),
  year date,
  month date,
  estimated_budget money(10),
  estimated_expenses money(10),
  estimated_income money(10),
  CONSTRAINT project_plan_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE project_performer
(
  project_id integer(15),
  user_id integer(15)
) WITH (
  OIDS=FALSE
);

CREATE TABLE billing_accounts
(
  id serial(15),
  owner_type smallint(1),
  owner_id integer(15),
  CONSTRAINT billing_accounts_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE billing_accounts_owners_types
(
  id serial(1),
  description text,
  is_virtual boolean,
  CONSTRAINT billing_accounts_owners_types_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE billing_requests_types
(
  id serial(1),
  description text,
  CONSTRAINT billing_requests_types_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE billing_operations
(
  account_id integer(15),
  request_id integer(15),
  operation_type smallint(1),
  amount money(10),
  occured_at timestamp without time zone
) WITH (
  OIDS=FALSE
);


ALTER TABLE role ADD CONSTRAINT user_role_id__role_id FOREIGN KEY (role_id) REFERENCES role(id);


ALTER TABLE project ADD CONSTRAINT project_contractor_id__contractor_id FOREIGN KEY (contractor_id) REFERENCES contractor(id);

ALTER TABLE project ADD CONSTRAINT project_manager_id__manager_id FOREIGN KEY (manager_id) REFERENCES manager(id);

ALTER TABLE project ADD CONSTRAINT project_status_id__status_id FOREIGN KEY (status_id) REFERENCES status(id);



ALTER TABLE billing_requests ADD CONSTRAINT billing_requests_project_id__project_id FOREIGN KEY (project_id) REFERENCES project(id);

ALTER TABLE billing_requests ADD CONSTRAINT billing_requests_type_id__billing_requests_types_id FOREIGN KEY (type_id) REFERENCES billing_requests_types(id);

ALTER TABLE billing_requests ADD CONSTRAINT billing_requests_manager_id__manager_id FOREIGN KEY (manager_id) REFERENCES manager(id);

ALTER TABLE billing_requests ADD CONSTRAINT billing_requests_contractor_id__contactor_id FOREIGN KEY (contractor_id) REFERENCES contractor(id);

ALTER TABLE billing_requests ADD CONSTRAINT billing_requests_accountant_id__accountant_id FOREIGN KEY (accountant_id) REFERENCES accountant(id);




ALTER TABLE project_performer ADD CONSTRAINT project_performer_project_id__project_id FOREIGN KEY (project_id) REFERENCES project(id);

ALTER TABLE project_performer ADD CONSTRAINT project_performer_user_id__user_id FOREIGN KEY (user_id) REFERENCES user(id);

ALTER TABLE billing_accounts ADD CONSTRAINT billing_accounts_owner_type__billing_accounts_owners_types_id FOREIGN KEY (owner_type) REFERENCES billing_accounts_owners_types(id);



ALTER TABLE billing_operations ADD CONSTRAINT billing_operations_account_id__billing_accounts_id FOREIGN KEY (account_id) REFERENCES billing_accounts(id);

ALTER TABLE billing_operations ADD CONSTRAINT billing_operations_request_id__billing_requests_id FOREIGN KEY (request_id) REFERENCES billing_requests(id);

ALTER TABLE billing_operations ADD CONSTRAINT billing_operations_operation_type__billing_operation_types_id FOREIGN KEY (operation_type) REFERENCES billing_operation_types(id);



CREATE INDEX account_id_request_id_index__billing_operations ON billing_operations USING btree("account_id", "request_id");
CREATE INDEX project_id_year_month_index__project_plan ON project_plan USING btree("project_id", "year", "month");
CREATE INDEX project_id_user_id_index__project_performer ON project_performer USING btree("project_id", "user_id");
