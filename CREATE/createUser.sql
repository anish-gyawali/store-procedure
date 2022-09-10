
/*Script to create login user and grant create and alter permission for store procedure */
Create login sqlUser with password='******';
Create user sqlUser for login sqlUser;

GRANT CREATE PROCEDURE TO [sqlUser];
GRANT ALTER ON SCHEMA::[dbo] TO [sqlUser];