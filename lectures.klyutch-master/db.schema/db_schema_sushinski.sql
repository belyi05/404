--пользователи
CREATE_TABLE user(
  id serial NOT NULL,
  role_id serial references role(id),
  name varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  password varchar(1024) NOT NULL,
  is_account_confirmed boolean NOT NULL default '0',
  is_account_banned boolean NOT NULL default '0',
  CONSTRAINT user_pkey PRIMARY KEY (id)
);

--заказчик
CREATE_TABLE contractor(
  id serial NOT NULL,
  name varchar(255) NOT NULL,
  description varchar(255) NOT NULL,
  CONSTRAINT contractor_pkey PRIMARY KEY (id),
  CONSTRAINT contractor_ukey UNIQUE(name)
);
-- роли
CREATE_TABLE role(
  id serial NOT NULL,
  name varchar(255) NOT NULL,
  description varchar(255) NOT NULL default "",
  is_admin boolean NOT NULL default'0',
  CONSTRAINT role_pkey PRIMARY KEY(id),
  CONSTRAINT role_ukey UNIQUE(name)
);
-- проект
CREATE_TABLE project(
  id serial NOT NULL,
  name varchar(255) NOT NULL,
  description varchar(255) NOT NULL default "",
  customer_id serial references customer(id),
  manager_id serial references user(id),
  created_at timestamp without time zone NOT NULL,
  CONSTRAINT project_pkey PRIMARY KEY(id),
  CONSTRAINT project_ukey UNIQUE(name) 
);
-- заявки
CREATE_TABLE billing_requests
(
  id serial NOT NULL,
  project_id serial references project(id),
  type_id serial references billing_request_types(id),
  description varchar(255) NOT NULL default "",
  account_from serial references billing_accounts(id),
  account_to serial references billing_accounts(id),
  amount decimal(15,6) NOT NULL DEFAULT '0.000000',
  is_declined boolean NOT NULL default '0',
  is_signed boolean NOT NULL default '0',
  is_approved boolean NOT NULL default '0',
  created_at timestamp without time zone NOT NULL,
  manager_id serial references user(id),
  accountant_id serial references user(id),
  contractor_id serial references contractor(id),
  CONSTRAINT billing_requests_pkey PRIMARY KEY(id),
  CONSTRAINT billing_requests_ukey UNIQUE(project_id, amount, created_at)
);
-- фин план проекта
CREATE_TABLE project_plan
(
  project_id serial references project(id),
  year&month timestamp without time zone NOT NULL,
  estimated_budget decimal(15,6) NOT NULL DEFAULT '0.000000',
  estiated_expences decimal(15,6) NOT NULL DEFAULT '0.000000',
  estimated_income decimal(15,6) NOT NULL DEFAULT '0.000000',
  CONSTRAINT billing_requests_pkey PRIMARY KEY(project_id,year&month)
);
-- исполнитель проекта
CREATE_TABLE project_performer
(
  project_id serial references project(id),
  user_id serial references user(id),
  CONSTRAINT project_performer_ukey UNIQUE(project_id, user_id)
);
-- словарь типов  владельцев счетов
CREATE_TABLE billing_accounts_owners_types
(
  id serial NOT NULL,
  description varchar(255) NOT NULL default "",
  is_virtual boolean NOT NULL default '0',
  CONSTRAINT  billing_accounts_owners_types_pkey PRIMARY KEY(id)
);
-- операции со счетами
CREATE_TABLE billing_operations
(
  account_id serial references billing_accounts(id),
  request_id serial references billing_requests(id),
  operation_type serial references billing_operations_types(id),
  amount decimal(15,6) NOT NULL DEFAULT '0.000000',
  occured_at timestamp without time zone NOT NULL,
  CONSTRAINT billing_operations_pkey PRIMARY KEY (account_id, request_id)
);
-- счет
CREATE_TABLE billing_accounts
(
  id serial NOT NULL,
  owner_type serial references billing_accounts_owners_types(id),
  owner_id serial references user(id),
  CONSTRAINT billing_accounts_pkey(id)
);
-- тип операций по счету
CREATE_TABLE billing_operations_types
(
  id serial NOT NULL,
  description varchar(255) NOT NULL default "",
  CONSTRAINT billing_operations_types_pkey PRIMARY KEY(id)
);
-- тип заявок
CREATE_TABLE billing_request_types
(
  id serial NOT NULL,
  description varchar(255) NOT NULL,
  CONSTRAINT  billing_request_types_pkey PRIMARY KEY(id)
);


