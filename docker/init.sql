-- Create a role for anonymous access
CREATE ROLE web_anon NOLOGIN;
GRANT USAGE ON SCHEMA public TO web_anon;

-- Create a sample table
CREATE TABLE tasks (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    completed BOOLEAN DEFAULT FALSE
);

-- Grant access to the API role
GRANT SELECT, INSERT, UPDATE, DELETE ON tasks TO web_anon;


-- Grant access to the web_anon role for SELECT, INSERT, UPDATE, DELETE
GRANT SELECT, INSERT, UPDATE, DELETE ON tasks TO web_anon;

-- Grant permission to use the sequence for inserting auto-incremented IDs
GRANT USAGE, SELECT, UPDATE ON SEQUENCE tasks_id_seq TO web_anon;