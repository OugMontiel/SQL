import mysql from 'mysql2/promise';

export const connection = await mysql.createConnection({
    host: 'monorail.proxy.rlwy.net',
    user: 'root',
    database: 'railway',
    port: '55482',
    password:'bLAjVebddXDxpABBveRfWmRVyzycvROk'
  });
 