drop table oauth_client_details;
drop table oauth_client_token;
drop table oauth_access_token;
drop table oauth_refresh_token;
drop table oauth_code;
drop table oauth_approvals;
drop table ClientDetails;

create table oauth_client_details (
  client_id VARCHAR2(255) PRIMARY KEY,
  resource_ids VARCHAR2(255),
  client_secret VARCHAR2(255),
  scope VARCHAR2(255),
  authorized_grant_types VARCHAR2(255),
  web_server_redirect_uri VARCHAR2(255),
  authorities VARCHAR2(255),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additional_information VARCHAR2(4000), --no soporto CLOB
  autoapprove VARCHAR2(255)
);

create table oauth_client_token (
  token_id VARCHAR2(255),
  token BLOB,
  authentication_id VARCHAR2(255) PRIMARY KEY,
  user_name VARCHAR2(255),
  client_id VARCHAR2(255)
);

create table oauth_access_token (
  token_id VARCHAR2(255),
  token BLOB, 
  authentication_id VARCHAR2(255) PRIMARY KEY,
  user_name VARCHAR2(255),
  client_id VARCHAR2(255),
  authentication BLOB, 
  refresh_token VARCHAR2(255)
);
 

create table oauth_refresh_token (
  token_id VARCHAR2(255),
  token BLOB,
  authentication BLOB
);
 

create table oauth_code (
  code VARCHAR2(255),
  authentication BLOB 
);
 

create table oauth_approvals (
    userId VARCHAR2(255),
    clientId VARCHAR2(255),
    scope VARCHAR2(255),
    status VARCHAR2(10),
    expiresAt TIMESTAMP,
    lastModifiedAt TIMESTAMP
);
 

create table ClientDetails (
  appId VARCHAR2(255) PRIMARY KEY,
  resourceIds VARCHAR2(255),
  appSecret VARCHAR2(255),
  scope VARCHAR2(255),
  grantTypes VARCHAR2(255),
  redirectUrl VARCHAR2(255),
  authorities VARCHAR2(255),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additionalInformation  VARCHAR2(4000), --no soporto CLOB
  autoApproveScopes VARCHAR2(255)
);
