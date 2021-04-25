CREATE TABLE keywords(id INTEGER PRIMARY KEY, word TEXT NOT NULL);
CREATE TABLE problems (
    id INTEGER PRIMARY KEY,
    title text NOT NULL,
    questionUrl TEXT NOT NULL,
    answerUrl TEXT
);
CREATE TABLE keywordAssignments(
    id INTEGER PRIMARY KEY,
    problemId INTEGER NOT NULL,
    keywordId INTEGER NOT NULL,
    FOREIGN KEY (keywordId) REFERENCES keywords(id),
    FOREIGN KEY (problemId) REFERENCES problems(id)
);