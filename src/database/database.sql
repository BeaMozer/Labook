CREATE TABLE
    users (
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        name TEXT NOT NULL,
        email TEXT UNIQUE NOT NULL,
        password TEXT NOT NULL,
        role TEXT NOT NULL,
        created_at DATETIME DEFAULT (strftime('%Y-%m-%d %H:%M:%S','now','localtime')
        )
    );

DROP TABLE users;

INSERT INTO users (id, name, email, password, role)
VALUES ('u001','Beatriz','beatriz@email.com','bia123','NORMAL'), 
       ('u002','Nicholas','nicholas@email.com','nich123','NORMAL');

CREATE Table
    posts(
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        creator_id TEXT NOT NULL,
        content TEXT UNIQUE NOT NULL,
        likes REAL NOT NULL,
        dislikes_numbers REAL NOT NULL,
        created_at DATETIME DEFAULT (strftime('%Y-%m-%d %H:%M:%S','now','localtime')),
        updated_at DATETIME DEFAULT (strftime('%Y-%m-%d %H:%M:%S','now','localtime'))
    );

DROP TABLE posts;

INSERT INTO posts(id, creator_id, content, likes, dislikes_numbers)
VALUES ('p001', 'u001', 'Oiee, tudo bem?', 5, 2), 
       ('p002', 'u002', 'Oie, tudo bem. E com você?', 4, 5 );

SELECT * FROM users;

SELECT * FROM posts;