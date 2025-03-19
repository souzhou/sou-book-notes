import pg from 'pg';
import env from "dotenv";

env.config();

const { Pool } = pg

const pool = new Pool({
    host: process.env.PG_HOST,
    user: process.env.PG_USER,
    password: process.env.PG_PASSWORD,
    database: process.env.PG_DATABASE,
    port: process.env.PG_PORT
});

export const query = (text, params, callback) => {
    return pool.query(text, params, callback)
}